<div class="section">
<div class="title">
    <h1>&#8226; Listado Ciudades &#8226;</h1>
    <h2>{include file	= 'Main/breadcrumb.tpl'}</h2>
</div>
<br />
    <table width="90" class="listado">
    
    <tr>
      <th width="80">Ciudad</th>
      </tr>
   {foreach from=$rows item=row}
   {assign var='txt' value='NO'}
      	{if $row.active}
      		{assign var='txt' value='YES'}
		{/if}
    <tr>
      <td><a href="?controller=proyecto&action=listado&ciudad={$row.id}" title="Ir a listado de proyecto de {$row.ciudad}">{$row.ciudad}</a></td>
      </tr>
    {/foreach}

  </table>
