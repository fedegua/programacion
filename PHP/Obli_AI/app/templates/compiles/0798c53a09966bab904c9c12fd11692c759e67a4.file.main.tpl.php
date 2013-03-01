<?php /* Smarty version Smarty-3.1.8, created on 2012-07-03 03:44:30
         compiled from "C:\AppServ/www/Obli_AI/app/templates\main\main.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3324ff294ce785523-15660304%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0798c53a09966bab904c9c12fd11692c759e67a4' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\main\\main.tpl',
      1 => 1340732016,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3324ff294ce785523-15660304',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'login' => 0,
    'main' => 0,
    'body' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff294ceafe212_41422288',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff294ceafe212_41422288')) {function content_4ff294ceafe212_41422288($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['login']->value){?>
	<?php $_smarty_tpl->tpl_vars["header"] = new Smarty_variable("header_log.tpl", null, 0);?>
<?php }else{ ?>
	<?php $_smarty_tpl->tpl_vars["header"] = new Smarty_variable("header.tpl", null, 0);?>	
<?php }?> 
<?php $_smarty_tpl->tpl_vars["main"] = new Smarty_variable("Main/".($_smarty_tpl->tpl_vars['header']->value), null, 0);?>
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['main']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['body']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ('Main/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>