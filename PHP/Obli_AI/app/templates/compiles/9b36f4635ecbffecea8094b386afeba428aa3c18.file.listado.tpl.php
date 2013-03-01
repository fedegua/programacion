<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 14:59:31
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Categoria\listado.tpl" */ ?>
<?php /*%%SmartyHeaderCode:72574ff38b8a9d2921-99688955%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9b36f4635ecbffecea8094b386afeba428aa3c18' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Categoria\\listado.tpl',
      1 => 1341424764,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '72574ff38b8a9d2921-99688955',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff38b8aab3e89_42165271',
  'variables' => 
  array (
    'rows' => 0,
    'row' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff38b8aab3e89_42165271')) {function content_4ff38b8aab3e89_42165271($_smarty_tpl) {?><div class="section">
<div class="title">
    <h1>&#8226; Listado categoria &#8226;</h1>
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
      <td width="90%"><a href="?controller=hallazgo&action=listado&categoria=<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['row']->value['nombre'];?>
</td>
  </tr>
    <tr>
      <td colspan="2"><hr /></td>
    </tr>
    <?php } ?>

</table>
<?php }} ?>