from django.conf.urls import patterns, include, url

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'obligatorio_apw.views.home', name='home'),
    # url(r'^obligatorio_apw/', include('obligatorio_apw.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
    url(r'^$', 'app_obl.views.index'),
    url(r'^ciudades/$',include('app_obl.ciudad.urls')),
    url(r'^candidatos/',include('app_obl.candidato.urls')),
    url(r'^plataforma/',include('app_obl.plataforma.urls')),
    url(r'^usuario/',include('app_obl.usuario.urls')),
    url(r'^reporting/',include('app_obl.reporting.urls')),
    #url(r'^css/(?P<path>,*)$','django.views.static.serve',{'document_root':setting.MEDIA_ROOT}),
)
