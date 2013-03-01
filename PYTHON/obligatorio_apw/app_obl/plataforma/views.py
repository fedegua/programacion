from app_obl.models import Plataforma, Mo, Usuario

def process(request, mensaje=None,telefono=None,out=None):
	p=Plataforma()
	mo = Mo()
	mo.texto = mensaje
	mo.telefono = telefono
	mt = p.processMo(mo)
	#from django.http import HttpResponse
	#return HttpResponse(mt.usuario.habilitado)
	if mt:
		view= {'msg':mt.texto, 'telefono': mt.telefono}
		
	else:
		view= {'msg':'hola', 'telefono': None}
	if out == 'xml/':
		from django.shortcuts import render_to_response
		return render_to_response('plataforma/api/xml/response.html', view, mimetype= 'aplication/xml')
	elif out == 'jso/':
		from django.http import HttpResponse
		import json
		#response = {'msj':mt.texto, 'telefono': mt.telefono}
		return HttpResponse(json.dumps(view), mimetype = 'aplication/xml')
	else:
		from django.http import HttpResponse
		return HttpResponse('formato invalido')
		
#	response = '%s %s' %(mensaje,telefono)
#	return HttpResponse(response)
