<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 19:49:13
         compiled from "E:\AppServ/www/Obli_AI/app/templates\Categoria\listado.tpl" */ ?>
<?php /*%%SmartyHeaderCode:272704ff4c8691e44e5-03012571%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0da140a500babb60568a151a313ca9b929721541' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\Categoria\\listado.tpl',
      1 => 1341424764,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '272704ff4c8691e44e5-03012571',
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
  'unifunc' => 'content_4ff4c86926c733_77326359',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4c86926c733_77326359')) {function content_4ff4c86926c733_77326359($_smarty_tpl) {?><div class="section">
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