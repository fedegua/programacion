<div class="section">
<div class="title">
    <h1>&#8226; Nuevos hallazgos &#8226;</h1>
    <h2>&nbsp;</h2>
</div>
<p>&nbsp;</p>
<table class="listado">
   {foreach from=$rows item=row}
  
    <tr>
      <td><a href="?controller=hallazgo&action=detalle&id={$row.id}&proyecto={$row.proyecto}"><img src="uploads/{$row.id}/mini/{$row.imagen}" title="Ver detalle de {$row.nombre}" /></a></td>
      <td width="90%">{$row.descripcion}</td>
  </tr>
    <tr>
      <td colspan="2"><hr /></td>
    </tr>
    {/foreach}

</table>
