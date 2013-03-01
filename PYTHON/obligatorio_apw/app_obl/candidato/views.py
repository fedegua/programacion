from django.shortcuts import render_to_response
from django.template import RequestContext
def listado(request, ciudad_id = None):
    from app_obl.models import Candidato
    err = False
    err_desc = None
    
    candidatos = Candidato.objects.filter(ciudad=ciudad_id)
    if not candidatos:
        err = True
        err_desc = 'No existen candidatos para esta ciudad'
    
    view = {'candidatos':candidatos, 'err':err,'err_desc':err_desc}
    
    return render_to_response('candidato/listado.html',view, context_instance = RequestContext(request))

def detalle(request, ciudad_id=None,candidato_id=None):
    from app_obl.models import Candidato
    err = False
    err_desc = None
    if ciudad_id is None:
        return redirect('ciudades/')
    if candidato_id is None:
        return redirect('candidatos/%s'% ciudad_id)
    else:
        try:
            candidato = Candidato.objects.get(pk = candidato_id)
        except Candidato.DoesNotExist:
            err = True
            err_desc = 'No existe candidato'
        
        view = {'candidato':candidato, 'err':err,'err_desc':err_desc, 'ciudad_id':ciudad_id}
        return render_to_response('candidato/detalle.html',view, context_instance = RequestContext(request))