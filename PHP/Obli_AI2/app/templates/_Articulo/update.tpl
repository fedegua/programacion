{literal}
	<script type="text/javascript">		    
    $(document).ready(function(){
		//$("select#subcategoria").attr("disabled","disabled");    
    		$("select#categoria").change(function(){
				$("select#subcategoria").attr("disabled","disabled");
				$("select#subcategoria").html("<option>Cargando...</option>");
				var id = $("select#categoria option:selected").attr('value');	 
					$.post("?controller=subcategoria&action=combo", {categoria:id}, function(data){
						if (data=="")
							$("select#subcategoria").html("<option value=0>Sin subcategorias...</option>");
						else{
							$("select#subcategoria").removeAttr("disabled");
							$("select#subcategoria").html(data);
						}
					});
	    	});
	});		
	</script>	
{/literal}
<div class="section">
<div class="title">
  <h1>&#8226; UPDATE Articulo &#8226;</h1>
    <h2>{include file	= 'Main/breadcrumb.tpl'}</h2>
</div>
<form action="?controller={$controller}&action=update" method="post" enctype="multipart/form-data" name="form1" id="form1">
<input type="hidden" name="id" value="{$id}" />
<input type="hidden" name="do_submit" value="1" />
<fieldset id="dateUserSolo">
<legend>Article Info</legend>
  <table class="datos">
    <tr>
      <td ><label for="codigo">C&oacute;digo (*):</label></td>
      <td>
        <input type="text" name="codigo" id="codigo" value="{$codigo}" />
        </td>
    </tr>    
    <tr>
      <td><label for="nombre">Nombre (*): </label></td>
      <td><input type="text" name="nombre" id="nombre" value="{$nombre}" /></td>
    </tr>
    <tr>
      <td>Precio:</td>
      <td><input type="text" name="precio" id="precio" value="{$precio}" /></td>
    </tr>
    <tr>
      <td>Categor&iacute;a (*):</td>
      <td><select name="categoria" id="categoria">
           	{html_options options=$categorias selected=$categoria_id}
      	</select></td>
    </tr>
    <tr>
      <td>Subcategor&iacute;a (*):</td>
      <td><select name="subcategoria" id="subcategoria">
        
         {html_options options=$subcategorias selected=$subcategoria_id}      	
      
      </select></td>
    </tr>
    <tr>
      <td>Imagen:</td>
      <td><input type="file" name="file" id="file" /></td>
    </tr>
    
    <tr>
      <td></td>
      <td align="right">{include file ='Main/update_buttons.tpl'}</td>
    </tr>
   
  </table>
 
</fieldset>

</form>