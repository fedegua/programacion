<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 19:47:55
         compiled from "E:\AppServ/www/Obli_AI/app/templates\Hallazgo\newest.tpl" */ ?>
<?php /*%%SmartyHeaderCode:324204ff4c81b8a9892-74489501%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ea7c196beb7ffe44e789cda5bc21c0a0d5f26a75' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\Hallazgo\\newest.tpl',
      1 => 1341356701,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '324204ff4c81b8a9892-74489501',
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
  'unifunc' => 'content_4ff4c81b94b9d6_04145994',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4c81b94b9d6_04145994')) {function content_4ff4c81b94b9d6_04145994($_smarty_tpl) {?><div class="section">
<div class="title">
    <h1>&#8226; Nuevos hallazgos &#8226;</h1>
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
      <td><a href="?controller=hallazgo&action=detalle&id=<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
&proyecto=<?php echo $_smarty_tpl->tpl_vars['row']->value['proyecto'];?>
"><img src="uploads/<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
/mini/<?php echo $_smarty_tpl->tpl_vars['row']->value['imagen'];?>
" title="Ver detalle de <?php echo $_smarty_tpl->tpl_vars['row']->value['nombre'];?>
" /></a></td>
      <td width="90%"><?php echo $_smarty_tpl->tpl_vars['row']->value['descripcion'];?>
</td>
  </tr>
    <tr>
      <td colspan="2"><hr /></td>
    </tr>
    <?php } ?>

</table>
<?php }} ?>