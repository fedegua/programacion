<div class="section">
<div class="title">
  <h1>&#8226; Deltalle de Hallazgo &#8226;</h1>
    <h2>{include file	= 'Main/breadcrumb.tpl'}</h2>
</div>
<form action="?controller={$controller}&action=create" method="post" enctype="multipart/form-data" name="form1" id="form1">
<input type="hidden" name="id" value="{$id}" />
<input type="hidden" name="do_submit" value="1" />
<input type="hidden" name="proyecto" value="{$proyecto_id}"  />
<input type="hidden" name="ciudad" value="{$ciudad}"  />
<fieldset id="dateUserSolo">
<legend>{$descripcion}</legend>
  <table class="datos">
    <tr>
      <td ><label for="latitud">Latitudo:</label></td>
      <td>{$latitud}</td>
    </tr>    
    <tr>
      <td><label for="longitud">Longitud: </label></td>
      <td>{$longitud}</td>
    </tr>
    <tr>
      <td>Fecha del hallazgo:</td>
      <td>{if empty($fecha_hallazgo)}No disponible{else}{$fecha_hallazgo}{/if}</td>
    </tr>
    <tr>
      <td>Ingresado:</td>
      <td>{$creado}</td>
    </tr>
    <tr>
      <td>Actualizado:</td>
      <td>{if empty($actualizado)}No disponible{else}{$actualizado}{/if}</td>
    </tr>
    
    <tr>
      <td colspan="2" align="center"><img src="uploads/{$id}/{$imagen}" title="{$nombre}" alt="{$nombre}" /></td>
      </tr>
   
  </table>
 
</fieldset>

</form>