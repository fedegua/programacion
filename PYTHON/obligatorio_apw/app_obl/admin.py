from models import Campania,Usuario,Candidato,CiudadComando,CandidatoComando,Ciudad
from django.contrib import admin
from django.shortcuts import render_to_response
from django.template import RequestContext
from django import forms
from django.core import exceptions

class CampaniaAdminForm(forms.ModelForm):

    class Meta:
        model = Campania
        
    def clean_fechaIni(self):
        from datetime import date       
        fecha_ini       = self.cleaned_data['fechaIni']
        
        if date.today() > fecha_ini:
            raise forms.ValidationError('Fecha ini debe ser mayor o igual a %s' % date.today())
        
        return fecha_ini
    
    def clean_fechaFin(self):
        from datetime import date       
        fecha_fin       = self.cleaned_data['fechaFin']
        
        if date.today() > fecha_fin:
            raise exceptions.ValidationError('Fecha fin debe ser mayor o igual a %s' % date.today())
       
        return fecha_fin
        
    def clean(self):              
        cleaned_data    = super(CampaniaAdminForm, self).clean()
        fecha_fin       = cleaned_data.get('fechaFin')        
        fecha_ini       = cleaned_data.get('fechaIni')
        fecha_conflicto = False
        
        if fecha_ini is None or fecha_fin is None:
            return cleaned_data
        
        #primero se ejecutan clean a nivel de campo.            
        if fecha_ini > fecha_fin:
            raise exceptions.ValidationError('Fecha inicio debe ser menor o igual a fecha fin')
        try:
            C = Campania.objects.get(fechaIni__lte =  fecha_ini, fechaFin__gte =  fecha_ini )
        except Campania.DoesNotExist:
            try:
                C = Campania.objects.get(fechaIni__lte =  fecha_fin, fechaFin__gte =  fecha_fin )
            except Campania.DoesNotExist:
                try:
                    C = Campania.objects.get(fechaIni__gte =  fecha_ini, fechaIni__lte =  fecha_fin )
                except Campania.DoesNotExist:
                    pass
                else:
                    fecha_conflicto  = '%s-%s' %(fecha_ini,fecha_fin)
            else:
                fecha_conflicto  = fecha_fin                
        else:
            fecha_conflicto  = fecha_ini        
       
        if fecha_conflicto:
            #es update
            if self.instance.pk is not None:
                if C.id == self.instance.pk:
                    pass
                else:
                    raise exceptions.ValidationError('Fecha dentro de intervalo de Campania %s %s - [%s] - %s' %(C.nombre, C.fechaIni, fecha_conflicto, C.fechaFin))
            #es new
            else:
                raise exceptions.ValidationError('Fecha dentro de intervalo de Campania %s %s - [%s] - %s' %(C.nombre, C.fechaIni, fecha_conflicto, C.fechaFin))
            
        #se retorna igual que forms front-end vistos en clase.
        return self.cleaned_data

class CampaniaAdmin(admin.ModelAdmin):
    form = CampaniaAdminForm
    
    list_display = ('nombre','fechaIni','fechaFin')

#Reporting Ciudades

class CiudadAdmin(admin.ModelAdmin):     
    
    #sobrescribir listado y agregar boton reporting
    #change_list_template = 'ciudad/change_list.html'
    
    def get_urls(self):
        from django.conf.urls import patterns
        urls = super(CiudadAdmin, self).get_urls()
        #sin control de login        
        urls2 = patterns('',
            (r'^reporting/$', self.ciudades)
        )
        
        #control de login
        urls2 = patterns('',
            (r'^reporting/$', self.admin_site.admin_view(self.ciudades))
        )
        
        return urls2 + urls   
    
    
    def ciudades(self, request):
        #levanto campania activa
        from app_obl.models import Campania, ReporteCiudad
        ca = Campania.activa()    
        if not ca:
            view = {'msg':'No hay campania activa'}
        else:
            #levanto reportes para la campania
            reportes = ReporteCiudad.objects.filter(campania = ca).order_by('qfy').reverse()
            if not reportes:
                view = {'msg':'Error interno'}
            else:
                view = {'reporte':reportes, 'campania':ca}
        return render_to_response('reporting/back_end_reporte_ciudad.html', view, context_instance = RequestContext(request)) 
     
admin.site.register(Campania, CampaniaAdmin)
admin.site.register(Usuario)
admin.site.register(Candidato)
admin.site.register(Ciudad, CiudadAdmin)
admin.site.register(CiudadComando)
admin.site.register(CandidatoComando)