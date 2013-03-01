<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 19:47:55
         compiled from "E:\AppServ/www/Obli_AI/app/templates\front_main\main.tpl" */ ?>
<?php /*%%SmartyHeaderCode:30254ff4c81b43f533-61222074%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5795f560888dcd320420ddd8e8ca4636a9f17b43' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\front_main\\main.tpl',
      1 => 1341352701,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '30254ff4c81b43f533-61222074',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'main' => 0,
    'body' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff4c81b6f5ab3_06277267',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4c81b6f5ab3_06277267')) {function content_4ff4c81b6f5ab3_06277267($_smarty_tpl) {?><?php $_smarty_tpl->tpl_vars["main"] = new Smarty_variable("front_main/header.tpl", null, 0);?>
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['main']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['body']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ('front_main/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>