from django.conf.urls import patterns, include, url

urlpatterns = patterns('app_obl.plataforma.views',    
	url(r'^(?P<mensaje>[\w\s]+)/(?P<telefono>[0-9]{9})/(?P<out>[a-z]{3}/$)', 'process'),
)
