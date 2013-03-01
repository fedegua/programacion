from models import Campania,Usuario,Candidato,CiudadComando,CandidatoComando,Ciudad
from django.contrib import admin
from django.shortcuts import render_to_response
from django.template import RequestContext
from django import forms
from django.core import exceptions

class CampaniaAdminForm(forms.ModelForm):
    
    def clean(self):
        if False:
            raise exceptions.ValidationError('Mensaje')
        return self.cleaned_data
    
    def clean_fechaIni(self):
        
        fecha = self.cleaned_data['fechaIni']
        try:
            from app_obl.models import Campania
            c = Campania.objects.get(fechaIni__lte = fecha, fechaFin__gte = fecha)
        except Campania.DoesNotExist:
            pass
        else:
            raise exceptions.ValidationError('Fecha Inicio no valida')
        
        return self.cleaned_data['fechaIni']
    
class CampaniaAdmin(admin.ModelAdmin):
    #agrego buscadoor
    search_fields = ('nombre',)
    
    #agrego filtro
    list_filter = ('nombre', 'fechaIni',)
    
    #agrego columnas al listado
    list_display = ('nombre', 'fechaIni','fechaFin',)
    
    #para forms, por ejemplo mostrar solo nombre y fecha ini
    
    #exclude = ('descripcioon',)
    
    fields = ('nombre','fechaIni', 'fechaFin','descripcion',)
    
    form = CampaniaAdminForm 


admin.site.register(Campania, CampaniaAdmin)


admin.site.register(Usuario)
admin.site.register(Candidato)
admin.site.register(Ciudad)
admin.site.register(CiudadComando)
admin.site.register(CandidatoComando)