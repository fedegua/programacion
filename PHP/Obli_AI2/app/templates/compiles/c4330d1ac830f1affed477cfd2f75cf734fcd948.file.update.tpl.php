<?php /* Smarty version Smarty-3.1.8, created on 2012-07-03 16:57:06
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Proyecto\update.tpl" */ ?>
<?php /*%%SmartyHeaderCode:280874ff342cce99435-85368964%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c4330d1ac830f1affed477cfd2f75cf734fcd948' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Proyecto\\update.tpl',
      1 => 1341345418,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '280874ff342cce99435-85368964',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff342cd05b975_53690818',
  'variables' => 
  array (
    'controller' => 0,
    'id' => 0,
    'nombre' => 0,
    'descripcion' => 0,
    'ciudad' => 0,
    'ciudad_id' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff342cd05b975_53690818')) {function content_4ff342cd05b975_53690818($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_options')) include 'C:\\AppServ\\smarty\\libs\\plugins\\function.html_options.php';
?>
<div class="section">
<div class="title">
  <h1>&#8226; UPDATE Proyecto &#8226;</h1>
    <h2><?php echo $_smarty_tpl->getSubTemplate ('Main/breadcrumb.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</h2>
</div>
<form action="?controller=<?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
&action=update" method="post" enctype="multipart/form-data" name="form1" id="form1">
<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
" />
<input type="hidden" name="do_submit" value="1" />
<fieldset id="dateUserSolo">
<legend>Proyecto Info</legend>
 <table class="datos">
    <tr>
      <td><label for="nombre">Nombre (*): </label></td>
      <td><input type="text" name="nombre" id="nombre" value="<?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
" /></td>
    </tr>    
    <tr>
        <td><label for="descripcion">Descripcion (*): </label></td>
        <td><input type="text" name="descripcion" id="descripcion" value="<?php echo $_smarty_tpl->tpl_vars['descripcion']->value;?>
" /></td>
    </tr>    
    <tr>
      <td>Ciudad (*):</td>
      <td><select name="ciudad" id="ciudad">
	    	<option value="NULL">Seleccionar...</option>
	      	<?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['ciudad']->value,'selected'=>$_smarty_tpl->tpl_vars['ciudad_id']->value),$_smarty_tpl);?>

      	</select>
      </td>
    </tr>        
    <tr>
      <td></td>
      <td align="right"><?php echo $_smarty_tpl->getSubTemplate ('Main/update_buttons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</td>
    </tr>
   
  </table>
 
</fieldset>

</form><?php }} ?>