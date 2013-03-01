<?php /* Smarty version Smarty-3.1.8, created on 2012-07-03 20:18:26
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Hallazgo\search.tpl" */ ?>
<?php /*%%SmartyHeaderCode:225354ff37dc2da5b22-47483043%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '903bd707e34a2a50b049edc7c2c4c72f3a9b90f2' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Hallazgo\\search.tpl',
      1 => 1341182032,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '225354ff37dc2da5b22-47483043',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'search' => 0,
    'rows' => 0,
    'row' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff37dc2ec76b1_57511110',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff37dc2ec76b1_57511110')) {function content_4ff37dc2ec76b1_57511110($_smarty_tpl) {?><div class="section">
<div class="title">
    <h1>&#8226; B&uacute;squeda de hallazgos &#8226;</h1>
    <?php if (!empty($_smarty_tpl->tpl_vars['search']->value)){?>
    <h3>Resultado de buscar <strong> <?php echo $_smarty_tpl->tpl_vars['search']->value;?>
 </strong></h3>
    <?php }?>
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