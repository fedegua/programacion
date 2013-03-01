<div class="section">
<div class="title">
    <h1>&#8226; Nuevas categorias &#8226;</h1>
    <h2>&nbsp;</h2>
</div>
<p>&nbsp;</p>
<table class="listado">
   {foreach from=$rows item=row}
  
    <tr>
      <td width="90%">{$row.nombre}</td>
  </tr>
    <tr>
      <td colspan="2"><hr /></td>
    </tr>
    {/foreach}

</table>
