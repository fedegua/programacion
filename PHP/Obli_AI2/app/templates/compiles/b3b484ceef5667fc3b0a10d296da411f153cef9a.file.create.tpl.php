<?php /* Smarty version Smarty-3.1.8, created on 2012-07-03 17:27:00
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Categoria\create.tpl" */ ?>
<?php /*%%SmartyHeaderCode:165494ff355941254a5-83311122%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b3b484ceef5667fc3b0a10d296da411f153cef9a' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Categoria\\create.tpl',
      1 => 1341347001,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '165494ff355941254a5-83311122',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'controller' => 0,
    'id' => 0,
    'nombre' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff3559420b047_83577598',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff3559420b047_83577598')) {function content_4ff3559420b047_83577598($_smarty_tpl) {?>
<div class="section">
<div class="title">
  <h1>&#8226; CREATE Categoria &#8226;</h1>
    <h2><?php echo $_smarty_tpl->getSubTemplate ('Main/breadcrumb.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</h2>
</div>
<form action="?controller=<?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
&action=create" method="post" enctype="multipart/form-data" name="form1" id="form1">
<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
" />
<input type="hidden" name="do_submit" value="1" />
<fieldset id="dateUserSolo">
<legend>Categoria Info</legend>
  <table class="datos">   
    <tr>
      <td><label for="nombre">Nombre (*): </label></td>
      <td><input type="text" name="nombre" id="nombre" value="<?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
" /></td>
    </tr>
    <tr>
      <td></td>
      <td align="right"><?php echo $_smarty_tpl->getSubTemplate ('Main/create_buttons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</td>
    </tr>
   
  </table>
 
</fieldset>

</form><?php }} ?>