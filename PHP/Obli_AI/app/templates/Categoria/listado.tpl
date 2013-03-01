<div class="section">
<div class="title">
    <h1>&#8226; Listado categoria &#8226;</h1>
    <h2>{include file	= 'Main/breadcrumb.tpl'}</h2>
    
</div>
<p>&nbsp;</p>
<table class="listado">
   {foreach from=$rows item=row}
  
    <tr>
      <td width="90%"><a href="?controller=hallazgo&action=listado&categoria={$row.id}">{$row.nombre}</td>
  </tr>
    <tr>
      <td colspan="2"><hr /></td>
    </tr>
    {/foreach}

</table>
