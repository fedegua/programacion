<div class="section">
<div class="title">
  <h1>&#8226; Deltalle de Art&iacute;culo &#8226;</h1>
    <h2>{include file	= 'Main/breadcrumb.tpl'}</h2>
</div>
<form action="?controller={$controller}&action=create" method="post" enctype="multipart/form-data" name="form1" id="form1">
<input type="hidden" name="id" value="{$id}" />
<input type="hidden" name="do_submit" value="1" />
<input type="hidden" name="subcategoria" value="{$subcategoria_id}"  />
<input type="hidden" name="categoria" value="{$categoria_id}"  />
<fieldset id="dateUserSolo">
<legend>{$nombre}</legend>
  <table class="datos">
    <tr>
      <td ><label for="codigo">C&oacute;digo:</label></td>
      <td>{$codigo}</td>
    </tr>    
    <tr>
      <td><label for="nombre">Nombre: </label></td>
      <td>{$nombre}</td>
    </tr>
    <tr>
      <td>Precio:</td>
      <td>{if empty($precio)}No disponible{else}{$precio}{/if}</td>
    </tr>
    <tr>
      <td>Ingresado:</td>
      <td>{$creado}</td>
    </tr>
    
    <tr>
      <td colspan="2" align="center"><img src="uploads/{$id}/{$imagen}" title="{$nombre}" alt="{$nombre}" /></td>
      </tr>
   
  </table>
 
</fieldset>

</form>