from django.conf.urls import patterns, include, url

urlpatterns = patterns('app_obl.usuario.views',
    
	url(r'^$', 'registro'),
    url(r'^registro/$', 'registro'),
    url(r'^pin/$', 'pin'),
    url(r'^login/$', 'login'),
    url(r'^logout/$', 'logout'),
)
