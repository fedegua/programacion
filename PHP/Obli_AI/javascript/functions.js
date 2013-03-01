
function send(url,form_id){
    //form_id id que identifica al formulario
    //DOM
    //tomo el objeto formulario
    r = confirm('Esta seguro que desea eliminar?');
    if(r){
        frm = document.getElementById(form_id);
        //agrego php que tiene que enviar la info
        frm.action = url;
        //envio formulario a la url especificada
        frm.submit();
    }     
}

function fav_add(){
	var url="http://www.webrecursos.com" 
	var titulo="WebRecursos.com - Recursos gratis para webmasters"
	function agregar(){
	if (document.all)
	window.external.AddFavorite(url,titulo)
	}
		
}

