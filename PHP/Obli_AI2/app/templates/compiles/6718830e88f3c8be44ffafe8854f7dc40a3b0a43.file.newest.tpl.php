<?php /* Smarty version Smarty-3.1.8, created on 2012-06-27 19:16:06
         compiled from "C:\AppServ/www/app_ai/app/templates\Articulo\newest.tpl" */ ?>
<?php /*%%SmartyHeaderCode:117224feb8626db9333-11112428%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6718830e88f3c8be44ffafe8854f7dc40a3b0a43' => 
    array (
      0 => 'C:\\AppServ/www/app_ai/app/templates\\Articulo\\newest.tpl',
      1 => 1340752350,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '117224feb8626db9333-11112428',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'rows' => 0,
    'row' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4feb8626e5c403_54768097',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4feb8626e5c403_54768097')) {function content_4feb8626e5c403_54768097($_smarty_tpl) {?><div class="section">
<div class="title">
    <h1>&#8226; Nuevos art&iacute;culos &#8226;</h1>
    <h2>&nbsp;</h2>
</div>
<p>&nbsp;</p>
<table class="listado">
   <?php  $_smarty_tpl->tpl_vars['row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['row']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['rows']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['row']->key => $_smarty_tpl->tpl_vars['row']->value){
$_smarty_tpl->tpl_vars['row']->_loop = true;
?>
  
    <tr>
      <td><a href="?controller=articulo&action=detalle&id=<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
&subcategoria=<?php echo $_smarty_tpl->tpl_vars['row']->value['subcategoriaId'];?>
"><img src="uploads/<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
/mini/<?php echo $_smarty_tpl->tpl_vars['row']->value['imagen'];?>
" title="Ver detalle de <?php echo $_smarty_tpl->tpl_vars['row']->value['nombre'];?>
" /></a></td>
      <td width="90%"><?php echo $_smarty_tpl->tpl_vars['row']->value['nombre'];?>
</td>
  </tr>
    <tr>
      <td colspan="2"><hr /></td>
    </tr>
    <?php } ?>

</table>
<?php }} ?>