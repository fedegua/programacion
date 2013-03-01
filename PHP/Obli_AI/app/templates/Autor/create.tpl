
<div class="section">
<div class="title">
  <h1>&#8226; CREATE Autor &#8226;</h1>
    <h2>{include file	= 'Main/breadcrumb.tpl'}</h2>
</div>
<form action="?controller={$controller}&action=create" method="post" enctype="multipart/form-data" name="form1" id="form1">
<input type="hidden" name="id" value="{$id}" />
<input type="hidden" name="do_submit" value="1" />
<fieldset id="dateUserSolo">
<legend>Autor Info</legend>
  <table class="datos">
    <tr>
      <td ><label for="documento">Documento (*):</label></td>
      <td>
        <input type="text" name="documento" id="documento" value="{$documento}" />
      </td>
    </tr>    
    <tr>
      <td><label for="nombre">Nombre (*): </label></td>
      <td><input type="text" name="nombre" id="nombre" value="{$nombre}" /></td>
    </tr>
    <tr>
      <td><label for="apellido">Apellido (*): </label></td>
      <td><input type="text" name="apellido" id="apellido" value="{$apellido}" /></td>
    </tr>
    <tr>
      <td>telefono:</td>
      <td><input type="text" name="telefono" id="telefono" value="{$telefono}" /></td>
    </tr>
    <tr>
      <td>Imagen:</td>
      <td><input name="file" type="file" id="file" /></td>
    </tr>
    
    <tr>
      <td></td>
      <td align="right">{include file ='Main/create_buttons.tpl'}</td>
    </tr>
   
  </table>
 
</fieldset>

</form>