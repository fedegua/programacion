<div class="section">
<div class="title">
  <h1>&#8226; Deltalle de Proyecto &#8226;</h1>
    <h2>{include file	= 'Main/breadcrumb.tpl'}</h2>
</div>
<form action="?controller={$controller}&action=create" method="post" enctype="multipart/form-data" name="form1" id="form1">
<input type="hidden" name="id" value="{$id}" />
<input type="hidden" name="do_submit" value="1" />
<input type="hidden" name="proyecto" value="{$proyecto_id}"  />
<input type="hidden" name="ciudad" value="{$ciudad}"  />
<fieldset id="dateUserSolo">
<legend>{$nombre}</legend>
  <table class="datos">
    <tr>
      <td ><label for="nombre">Nombre:</label></td>
      <td>{$nombre}</td>
    </tr>    
    <tr>
      <td><label for="descripcion">Descripcion: </label></td>
      <td>{$descripcion}</td>
    </tr>   
        <tr>
      <td>Ciudad:</td>
      <td>{if empty($ciudad_name)}No disponible{else}{$ciudad_name}{/if}</td>
    </tr>
    <tr>
      <td>Ingresado:</td>
      <td>{$creado}</td>
    </tr>
    <tr>
      <td>Actualizado:</td>
      <td>{if empty($actualizado)}No disponible{else}{$actualizado}{/if}</td>
    </tr>
  </table>
 
</fieldset>

</form>