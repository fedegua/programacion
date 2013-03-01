<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 23:11:41
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Hallazgo\listado.tpl" */ ?>
<?php /*%%SmartyHeaderCode:197644ff3866c4d1db7-78913756%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '809d4881bc9ea27c8e2fbf325024cdabe7005596' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Hallazgo\\listado.tpl',
      1 => 1341447253,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '197644ff3866c4d1db7-78913756',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff3866c5d94d0_61579086',
  'variables' => 
  array (
    'rows' => 0,
    'row' => 0,
    'proyecto' => 0,
    'categoria' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff3866c5d94d0_61579086')) {function content_4ff3866c5d94d0_61579086($_smarty_tpl) {?><div class="section">
<div class="title">
    <h1>&#8226; Listado hallazgos &#8226;</h1>
    <h2><?php echo $_smarty_tpl->getSubTemplate ('Main/breadcrumb.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</h2>
    
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
<?php if (!empty($_smarty_tpl->tpl_vars['proyecto']->value)){?>&proyecto=<?php echo $_smarty_tpl->tpl_vars['proyecto']->value;?>
<?php }?>&categoria=<?php echo $_smarty_tpl->tpl_vars['categoria']->value;?>
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