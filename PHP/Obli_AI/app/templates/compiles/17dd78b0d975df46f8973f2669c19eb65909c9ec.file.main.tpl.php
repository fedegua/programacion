<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 19:48:08
         compiled from "E:\AppServ/www/Obli_AI/app/templates\main\main.tpl" */ ?>
<?php /*%%SmartyHeaderCode:216494ff4c8282d0c49-46112205%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '17dd78b0d975df46f8973f2669c19eb65909c9ec' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\main\\main.tpl',
      1 => 1340732016,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '216494ff4c8282d0c49-46112205',
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
  'unifunc' => 'content_4ff4c8283b2e12_50200520',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4c8283b2e12_50200520')) {function content_4ff4c8283b2e12_50200520($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['login']->value){?>
	<?php $_smarty_tpl->tpl_vars["header"] = new Smarty_variable("header_log.tpl", null, 0);?>
<?php }else{ ?>
	<?php $_smarty_tpl->tpl_vars["header"] = new Smarty_variable("header.tpl", null, 0);?>	
<?php }?> 
<?php $_smarty_tpl->tpl_vars["main"] = new Smarty_variable("Main/".($_smarty_tpl->tpl_vars['header']->value), null, 0);?>
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['main']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['body']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ('Main/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>