function buscar (page, form, path){
	frm = document.getElementById(form);
	frm.action = path + '?page=' + page;
	frm.submit()
	}