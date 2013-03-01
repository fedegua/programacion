from django.template import RequestContext
from django.shortcuts import render_to_response
from django.http import HttpResponse

def inicio(request):
	return render_to_response('reporting/inicio.html', context_instance = RequestContext(request))
def candidatos(request):
	#campania activa
	from app_obl.models import Campania, ReporteCandidato
	ca = Campania.activa()
	if not ca:
		view = {'msg':'No hay camapnia'}
		return render_to_response('reporting/reporte_candidato.html',view,context_instance = RequestContext(request))		
	else:
		#levanto repotes en esa ca
		reportes = ReporteCandidato.objects.filter(campania=ca).order_by('qfy').reverse()
		if not reportes:
			view = {'msg':'No hay reportes'}
			return render_to_response('reporting/reporte_candidato.html',view,context_instance = RequestContext(request))
		else:
			view = {'reporte':reportes,'campania':ca}
			return render_to_response('reporting/reporte_candidato.html',view,context_instance = RequestContext(request))
			
def ciudades(request):
	#campania activa
	from app_obl.models import Campania, ReporteCiudad
	ca = Campania.activa()
	if not ca:
		view = {'msg':'No hay camapnia'}
		return render_to_response('reporting/reporte_ciudad.html',view,context_instance = RequestContext(request))
	else:
		#levanto reportes en esa ca
		reportes = ReporteCiudad.objects.filter(campania=ca).order_by('qfy').reverse()
		if not reportes:
			view = {'msg':'No hay reportes'}
			return render_to_response('reporting/reporte_ciudad.html',view,context_instance = RequestContext(request))
		else:
			view = {'reporte':reportes,'campania':ca}
			return render_to_response('reporting/reporte_ciudad.html',view, context_instance = RequestContext(request))