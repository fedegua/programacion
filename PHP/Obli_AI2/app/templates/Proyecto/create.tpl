{literal}
	<script type="text/javascript">		    
    $(document).ready(function(){
		$("select#subcategoria").attr("disabled","disabled");    
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
  <h1>&#8226; CREATE Proyecto &#8226;</h1>
    <h2>{include file	= 'Main/breadcrumb.tpl'}</h2>
</div>
<form action="?controller={$controller}&action=create" method="post" enctype="multipart/form-data" name="form1" id="form1">
<input type="hidden" name="id" value="{$id}" />
<input type="hidden" name="do_submit" value="1" />
<fieldset id="dateUserSolo">
<legend>Project Info</legend>
  <table class="datos">
    <tr>
      <td><label for="nombre">Nombre (*): </label></td>
      <td><input type="text" name="nombre" id="nombre" value="{$nombre}" /></td>
    </tr>    
    <tr>
        <td><label for="descripcion">Descripcion (*): </label></td>
        <td><input type="text" name="descripcion" id="descripcion" value="{$descripcion}" /></td>
    </tr>    
    <tr>
      <td>Ciudad (*):</td>
      <td><select name="ciudad" id="ciudad">
	    	<option value="NULL">Seleccionar...</option>
	      	{html_options options=$ciudad selected=$ciudad_id}
      	</select>
      </td>
    </tr>        
    <tr>
      <td></td>
      <td align="right">{include file ='Main/create_buttons.tpl'}</td>
    </tr>
   
  </table>
 
</fieldset>

</form>