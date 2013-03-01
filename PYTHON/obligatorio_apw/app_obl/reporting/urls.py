from django.conf.urls import patterns, include, url

urlpatterns = patterns('app_obl.reporting.views',    
	url(r'^$', 'inicio'),
	url(r'^candidatos/$', 'candidatos'),
	url(r'^ciudades/$', 'ciudades'),
)
