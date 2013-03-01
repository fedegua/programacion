<div class="section">
<div class="title">
    <h1>&#8226; Listado hallazgos &#8226;</h1>
    <h2>{include file	= 'Main/breadcrumb.tpl'}</h2>
    
</div>
<p>&nbsp;</p>
<table class="listado">
   {foreach from=$rows item=row}
  
    <tr>
      <td><a href="?controller=halazgo&action=detalle&id={$row.id}"><img src="uploads/{$row.id}/mini/{$row.imagen}" title="Ver detalle de {$row.nombre}" /></a></td>
      <td width="90%">{$row.nombre}</td>
  </tr>
    <tr>
      <td colspan="2"><hr /></td>
    </tr>
    {/foreach}

</table>
