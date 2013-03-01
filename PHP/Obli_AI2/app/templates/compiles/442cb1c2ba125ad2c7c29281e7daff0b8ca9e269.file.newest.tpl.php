<?php /* Smarty version Smarty-3.1.8, created on 2012-07-03 20:05:05
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Hallazgo\newest.tpl" */ ?>
<?php /*%%SmartyHeaderCode:170914ff28ef6d653a8-94881798%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '442cb1c2ba125ad2c7c29281e7daff0b8ca9e269' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Hallazgo\\newest.tpl',
      1 => 1341356701,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '170914ff28ef6d653a8-94881798',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff28ef6de1518_49745185',
  'variables' => 
  array (
    'rows' => 0,
    'row' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff28ef6de1518_49745185')) {function content_4ff28ef6de1518_49745185($_smarty_tpl) {?><div class="section">
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