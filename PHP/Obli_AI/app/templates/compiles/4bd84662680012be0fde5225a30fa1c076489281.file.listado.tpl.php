<?php /* Smarty version Smarty-3.1.8, created on 2012-07-05 00:31:29
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Autor\listado.tpl" */ ?>
<?php /*%%SmartyHeaderCode:235644ff506ebf000b4-46658882%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4bd84662680012be0fde5225a30fa1c076489281' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Autor\\listado.tpl',
      1 => 1341459082,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '235644ff506ebf000b4-46658882',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff506ec0d4544_82856064',
  'variables' => 
  array (
    'rows' => 0,
    'row' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff506ec0d4544_82856064')) {function content_4ff506ec0d4544_82856064($_smarty_tpl) {?><div class="section">
<div class="title">
    <h1>&#8226; Listado autor &#8226;</h1>
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
      <td><a href="?controller=autor&action=detalle&id=<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
"><img src="uploads/autor/<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
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