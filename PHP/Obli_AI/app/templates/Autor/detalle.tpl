<div class="section">
<div class="title">
  <h1>&#8226; Deltalle de Autor &#8226;</h1>
    <h2>{include file	= 'Main/breadcrumb.tpl'}</h2>
</div>
<form action="?controller={$controller}&action=create" method="post" enctype="multipart/form-data" name="form1" id="form1">
<input type="hidden" name="id" value="{$id}" />
<input type="hidden" name="do_submit" value="1" />
<fieldset id="dateUserSolo">
<legend>{$nombre}</legend>
  <table class="datos">
    <tr>
      <td ><label for="nombre">Nomber:</label></td>
      <td>{$nombre}</td>
    </tr>    
    <tr>
      <td><label for="apellido">Apellido: </label></td>
      <td>{$apellido}</td>
    </tr>
    <tr>
      <td><label for="documento">Documento: </label></td>
      <td>{$documento}</td>
    </tr>
    <tr>
      <td>Teléfono:</td>
      <td>{if empty($telefono)}No disponible{else}{$telefono}{/if}</td>
    </tr>
    <tr>
      <td>Ingresado:</td>
      <td>{$creado}</td>
    </tr>
    
    <tr>
      <td colspan="2" align="center"><img src="uploads/Autor/{$id}/{$imagen}" title="{$nombre}" alt="{$nombre}" /></td>
      </tr>
   
  </table>
 
</fieldset>

</form>