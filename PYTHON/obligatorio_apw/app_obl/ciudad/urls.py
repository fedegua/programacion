from django.conf.urls import patterns, include, url

urlpatterns = patterns('app_obl.ciudad.views',
    
    url(r'^$', 'listado'),
    
)
