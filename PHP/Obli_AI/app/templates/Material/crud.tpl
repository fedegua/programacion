<div class="section">
<div class="title">
            {include file = 'Material/crud_menu_mantenimiento.tpl'}
    <h1>&#8226; CRUD Material &#8226;</h1>
    <h2>{include file	= 'Main/breadcrumb.tpl'}</h2>
</div>
{include file ='Material/crud_menu.tpl'}
{if $status}
<div id="messages" class="appMsg_{$status}">{$msg}</div>
{/if} 
<form id="form1" name="form1" method="post" action="">
    <table width="986" class="listado">
    
    <tr>
      <th width="23">&nbsp;</th>
      <th width="62">ID</th>
      <th width="92">Código</th>
      <th width="117">Nombre</th>
      <th width="355">Created</th>
      <th width="212">Updated</th>
      </tr>
   {foreach from=$rows item=row}
   {assign var='txt' value='NO'}
      	{if $row.active}
      		{assign var='txt' value='YES'}
		{/if}
    <tr>
      <td><label>
        <input name="id[]" type="checkbox" id="id[]" value="{$row.id}" />
      </label></td>
      <td>{$row.id}</td>
      <td><a href="?controller=material&action=update&id={$row.id}" title="Update this article">{$row.codigo}</a></td>
      <td>{$row.nombre}</td>
      <td>{$row.creado}</td>
      <td>{$row.actualizado}</td>
      </tr>
    {/foreach}

  </table>
</form>
