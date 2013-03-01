{literal}
	<script type="text/javascript">		    
    $(document).ready(function(){
		$("select#proyecto").attr("disabled","disabled");    
    		$("select#ciudad").change(function(){
				$("select#proyecto").attr("disabled","disabled");
				$("select#proyecto").html("<option>Cargando...</option>");
				var id = $("select#ciudad option:selected").attr('value');	 
					$.post("?controller=proyecto&action=combo", {ciudad:id}, function(data){
						if (data=="")
							$("select#proyecto").html("<option value=0>Sin proyecto...</option>");
						else{
							$("select#proyecto").removeAttr("disabled");
							$("select#proyecto").html(data);
						}
					});
	    	});
	});		
	</script>	
{/literal}
<div class="section">
<div class="title">
  <h1>&#8226; CREATE Hallazgo &#8226;</h1>
    <h2>{include file	= 'Main/breadcrumb.tpl'}</h2>
</div>
<form action="?controller={$controller}&action=create" method="post" enctype="multipart/form-data" name="form1" id="form1">
<input type="hidden" name="id" value="{$id}" />
<input type="hidden" name="do_submit" value="1" />
<fieldset id="dateUserSolo">
<legend>Hallazgo Info</legend>
  <table class="datos">
    <tr>
      <td ><label for="descripcion">Descripción (*):</label></td>
      <td>
        <input type="text" name="descripcion" id="descripcion" value="{$descripcion}" />
      </td>
    </tr>
    <tr>
      <td>Imagen:</td>
      <td><input name="file" type="file" id="file" /></td>
    </tr>    
    <tr>
      <td><label for="latitud">Latitud (*): </label></td>
      <td><input type="text" name="latitud" id="latitud" value="{$latitud}" /></td>
    </tr>
    <tr>
      <td><label for="longitud">Longitud (*): </label></td>
      <td><input type="text" name="longitud" id="longitud" value="{$longitud}" /></td>
    </tr>
    <tr>
      <td><label for="fecha_hallazgo">Fecha del hallazgo (*): </label></td>
      <td><input type="text" name="fecha_hallazgo" id="fecha_hallazgo" value="{$fecha_hallazgo}" /></td>
    </tr>
    <tr>
      <td>Ciudad (*):</td>
      <td><select name="ciudad" id="ciudad">
	    	<option value="NULL">Seleccionar...</option>
	      	{html_options options=$ciudad selected=$ciudadId}
      	</select>
      </td>
    </tr>
    <tr>
      <td>Proyecto (*)</td>
      <td><select name="proyecto" id="proyecto">
      	<option value="NULL"></option>
      	 {html_options options=$proyecto selected=$proyecto_id}
      	</select>
      </td>
    </tr>
    <tr>
      <td>Material (*)</td>
      <td><select name="material" id="material">
      	<option value="NULL"></option>
      	 {html_options options=$material selected=$material_id}
      	</select>
      </td>
    </tr>
    <tr>
      <td>Categoría (*)</td>
      <td><select name="categoria" id="categoria">
      	<option value="NULL"></option>
      	 {html_options options=$categoria selected=$categoria_id}
      	</select>
      </td>
    </tr>
    <tr>
      <td>Autor (*)</td>
      <td><select name="autor" id="autor">
      	<option value="NULL"></option>
      	 {html_options options=$autor selected=$autor_id}
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