from re import match
from django.http import HttpResponse, HttpResponseRedirect
from django.conf import settings

class VerifyUser:
	def process_request(self,request):
		ex_auth_url=(r'^usuario/', r'^ciudades/',r'^plataforma/',r'^admin/')
		path= request.path_info.lstrip('/')
		for pattern in ex_auth_url:
			if match(pattern,path):
				return None
		if not request.user.is_authenticated():
			HttpResponseRedirect(settings.APP_OBL.get('login_default_url'))
		else:
			return None
				
	#ciudades sigin
	def process_view(self, request, view_func, view_args, view_kwargs):
		if view_func.__name__ == 'login' and request.user.is_authenticated():
			return HttpResponseRedirect (settings.APP_OBL.get('login_default_url'))