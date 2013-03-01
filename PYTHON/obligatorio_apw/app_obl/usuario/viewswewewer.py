from django.shortcuts import render_to_response
from django.shortcuts import redirect   
from django.http import HttpResponse
from django import forms

class RegistroForm(forms.Form):
    telefono_errors = {'required':'Ingrese telefono','invalid':'Numero invalido'}
    telefono = forms.IntegerField(error_messages = telefono_errors)    
    
    def clean(self):
        cleaned_data = super(RegistroForm, self).clean()
        tel = cleaned_data.get('telefono')
        try:
            from app_obl.models import Usuario
            u = Usuario.objects.get(telefono = tel)
        except Usuario.DoesNotExist:
            return cleaned_data
        else:
            raise forms.ValidateFormErrors('El telefono % ya existe' % tel)
            return claned_data
            
class PinForm(forms.form):
    pin_field = PinField(min_value = 1000, max_value = 9999, widget = forms.textInput(attrs = {'size':4,'maxlenght':4}))
    telefono_field = form.charField(widget = forms.HiddenInput, required = false)
    
    def clean(self):
        cleaned_data=super(PinForm,self).clean()
        Upin=cleaned_data.get('pin_field')
        Utel=cleaned_data.get('telefono_field')
        #valido largo
        if len(str(Upin)) != 4:
            raise form.ValidationError('Pin invalido')
        try:
            from app_obl.models import Pin
            p = Pin.objects.get(pin = Upin)
        except Pin.DoesNotExist:
            raise form.ValidationError('Pin invalido')
        else:
            if p.telefono == Utel:
                p.delete()
            else:
                raise form.ValidationError('Pin invalido')
        return cleaned_data

    
class PinField (forms.IntegerField):
    default_error_messages={'requiered':'Ingrese un pin para continuar'}
    
    def to_python(self, value):
        try:
            value = int(value)
        except ValueError:
            raise forms.ValidationError('Ingrese solo digitos')
        return value
    
    def validate(self,value):
        pass
 
def registro(request):
    from django.template import RequestContext
    if request.method == 'POST':
		form = RegistroForm(request.POST)
		if form.is_valid():            
			tel = form.cleaned_data.get('telefono')
			from app_obl.models import Carrier,Pin,Mt                         
			p = Pin()			        
			p.telefono = tel
            p.pin = 'hola'                    
			p.save()
			mt = Mt()
			mt.texto = 'Tu Pin es %s'% p.pin
			mt.telefono = tel
			Carrier.send(mt)
			form2 = PinForm({'telefono_field': tel})
			return render_to_response('usuario/pin.html',{'form2':form2}, context_instance = RequestContext(request)) 
    else:
        #Formulario vacio
    	form = RegistroForm()
    return render_to_response('usuario/registro.html',{'form':form}, context_instance = RequestContext(request) )
    
def pin(request):
    from django.template import RequestContext	
    form = PinForm(request.POST)
	if request.method == 'POST':
		if form.is.validate():
			tel = form.cleaned.data.get('telefono.field')
			#llama a RPC
            #traigo datos con el telefono
			#Crea Usuario
			#Guarda datos
			return redirect('/ciudades/')
	else:
	   return render_to_response('usuario/pin.html',{'form2',form},  context_instance = RequestContext(request))
	
