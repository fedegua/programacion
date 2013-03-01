from django.shortcuts import render_to_response
from django.template import RequestContext
def listado(request):
    from app_obl.models import Ciudad
    search = ''
    if request.POST:
        search = request.POST.get('search')
        if search is not None:
            ciudades = Ciudad.objects.filter(nombre__icontains = search).order_by('nombre')
        else:
            Ciudad.objects.all().order_by('nombre')
    else:
        ciudades = Ciudad.objects.all().order_by('nombre')
        
    ciudades = paginar(request,ciudades)
    view = {'ciudades':ciudades,'search':search}
    return render_to_response('ciudad/listado.html',view,context_instance = RequestContext(request))

def paginar(request,ciudades):
    from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
    paginator = Paginator(ciudades,2)
    page = request.GET.get('page')
    try:
        ciudades = paginator.page(page)
    except PageNotAnInteger:
        ciudades = paginator.page(1)
    except EmptyPage:
        ciudades = paginator.page(paginator.num_pages)
    return ciudades