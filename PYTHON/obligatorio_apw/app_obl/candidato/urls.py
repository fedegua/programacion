from django.conf.urls import patterns, include, url

urlpatterns = patterns('app_obl.candidato.views',
    
    url(r'^(?P<ciudad_id>\d+)/$', 'listado'),
    url(r'^(?P<ciudad_id>\d+)/(?P<candidato_id>\d+)/', 'detalle'),
)
