<div class="section">
<div class="title">
    <h1>&#8226; Listado Categor&iacute;as &#8226;</h1>
    <h2>{include file	= 'Main/breadcrumb.tpl'}</h2>
</div>
<br />
    <table width="90" class="listado">
    
    <tr>
      <th width="80">Nombre</th>
      </tr>
   {foreach from=$rows item=row}
   {assign var='txt' value='NO'}
      	{if $row.active}
      		{assign var='txt' value='YES'}
		{/if}
    <tr>
      <td><a href="?controller=subcategoria&action=listado&categoria={$row.id}" title="Ir a listado de subcategorias de {$row.nombre}">{$row.nombre}</a></td>
      </tr>
    {/foreach}

  </table>
