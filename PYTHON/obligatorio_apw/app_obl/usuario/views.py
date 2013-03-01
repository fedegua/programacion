from django.shortcuts import render_to_response
from django.shortcuts import redirect
from django.http import HttpResponse, HttpResponseRedirect
from django import forms

class RegistroForm(forms.Form):
    telefono_errors = {'required':'Ingrese telefono para continuar',
                        'invalid':'Ingrese un numero de telefono valido'}
    telefono        = forms.CharField(error_messages = telefono_errors)#se lo cambie era integer
    
    def clean(self):
        cleaned_data = super(RegistroForm, self).clean()
        tel = cleaned_data.get('telefono')
        try:
            val = int(tel)
        except ValueError:
            raise forms.ValidationError('Ingrese solo digitos')
        try:
            from app_obl.models import Usuario
            U = Usuario.objects.get(telefono = tel)
            
        except Usuario.DoesNotExist:
            return cleaned_data        
        else:
            raise forms.ValidationError('El telefono %s ya existe' %tel)
        return cleaned_data
    
class PinField(forms.IntegerField):
    
    default_error_messages = {'required':'Ingrese un PIN para continuar'}
    
    def to_python(self, value):
        try:
            value = int(value)
        except ValueError:
            raise forms.ValidationError('Ingrese solo digitos')
        return value
    
    def validate(self, value):
        pass

class PinForm(forms.Form):
    pin_field = PinField(widget = forms.TextInput({'size':4, 'maxlength':4}))        
    telefono_field = forms.CharField(widget = forms.HiddenInput)        
    
    def clean(self):
        cleaned_data = super(PinForm, self).clean()
        upin = cleaned_data.get('pin_field')
        utel = cleaned_data.get('telefono_field')
        if len(str(upin)) != 4:
            raise forms.ValidationError('PIN invalido1')
        try:
            from app_obl.models import Pin
            p = Pin.objects.get(pin = upin)
                     
        except Pin.DoesNotExist:
            raise forms.ValidationError('PIN invalido2')
        else:
            
            if p.tel == utel:
                p.delete()            
            else:
                raise forms.ValidationError('PIN invalido3') 
        return cleaned_data         
        
       
    
def registro(request):
    from django.template import RequestContext
    if request.method == 'POST':
        form = RegistroForm(request.POST)
        if form.is_valid():
            tel = form.cleaned_data.get('telefono')
            
            from app_obl.models import Carrier,Mt,Pin
            import random
            p = Pin()
            p.pin = random.randrange(1000,9999)
            
            p.tel = tel
            p.save()
            mt = Mt()
            mt.texto = 'Tu pin es %s' % p.pin
            mt.telefono = tel
            Carrier.send(mt)
            form2 = PinForm({'telefono_field':tel})
            return render_to_response('usuario/pin.html', {'form2':form2}, context_instance = RequestContext(request))
    else:
        #Formulario vacio
        form = RegistroForm()
    return render_to_response('usuario/registro.html', {'form':form}, context_instance = RequestContext(request))

def pin(request):
    from django.template import RequestContext
    from app_obl.models import Usuario, Ciudad
    form = PinForm(request.POST)
    
    if request.method == 'POST':
        
        if form.is_valid():
            #Llamo a RPC
            #traigo datos con el telefono
            #creo usuario
            #lo salvo                            
            tel = form.cleaned_data.get('telefono_field')
            #tel = int(tel)
            #from django.http import HttpResponse
            #return HttpResponse(tel)
            from app_obl.rpc import Rpc  
            rp = Rpc()   
            import xmlrpclib
            try:
                usu = rp.rpc(tel)
            except xmlrpclib.Fault as err:
                form2 = RegistroForm(request.POST)
                form2.non_field_errors = {err.faultString:err}
                return render_to_response('usuario/registro.html',{'form':form2},context_instance = RequestContext(request))
            except xmlrpclib.ProtocolError as err:   
                msg = err.errmsg
                return render_to_response('usuario/pin.html',{'form2':form, "msg":msg},context_instance = RequestContext(request))
            except Exception as err:
                msg =err
                return render_to_response('usuario/pin.html',{'form2':form, "msg":msg},context_instance = RequestContext(request))
            else:
                u = Usuario()
                u.nombre = usu.get('nombre')
                u.apellido = usu.get('apellido')
                u.telefono = usu.get('telefono')
                u.documento = usu.get('documento')
                u.direccion = usu.get('direccion')
                u.fechaNac = usu.get('fechaNac')
                if usu.get('habilitado'):
                    u.habilitado = True
                else:
                    u.habilitado = False        
                try:
                    ciudad = Ciudad.objects.get(nombre = usu.get('ciudad'))
                except  Ciudad.DoesNotExist as err:
                    msg = "ciudad no existe"
                    return render_to_response('usuario/pin.html',{'form2':form, "msg":msg},context_instance = RequestContext(request))
                else:        
                    u.ciudad_id = ciudad.id
                    u.save()
                    return redirect('/ciudades/') 
            

    return render_to_response('usuario/pin.html',{'form2':form},context_instance = RequestContext(request))

def login (request):
    from django.contrib.auth import authenticate, login
    from django.template import RequestContext
    usr=pwd=''
    view= {}
    
    if request.POST:
        usr=request.POST.get('usr')
        pwd=request.POST.get('pwd')
        user=authenticate(username=usr,password=pwd)
        if usr is not None:
            #lo guardo en la sesion
            login(request, user)
            from django.conf import settings
            return HttpResponseRedirect(settings.APP_OBL.get('login_default_url'))
        else:
            view = {'satus':'usr o pwd invalido'}
    
    return render_to_response ('usuario/login.html',view,context_instance = (RequestContext(request)))
        
def logout(request):
    from django.contrib.auth import logout
    from django.conf import settings
    #elimina toda la sesion el logout
    logout(request)
    return HttpResponseRedirect(settings.APP_OBL.get('login_default'))
