<?php /* Smarty version Smarty-3.1.8, created on 2012-07-03 18:58:33
         compiled from "C:\AppServ/www/Obli_AI/app/templates\front_main\main.tpl" */ ?>
<?php /*%%SmartyHeaderCode:86604ff28ef69e03a1-64835060%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2581cf3f05ad1913eca547b4e710cf1cb86661c2' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\front_main\\main.tpl',
      1 => 1341352701,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '86604ff28ef69e03a1-64835060',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff28ef6c960e6_12229554',
  'variables' => 
  array (
    'main' => 0,
    'body' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff28ef6c960e6_12229554')) {function content_4ff28ef6c960e6_12229554($_smarty_tpl) {?><?php $_smarty_tpl->tpl_vars["main"] = new Smarty_variable("front_main/header.tpl", null, 0);?>
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['main']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['body']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ('front_main/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>