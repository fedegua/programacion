<?php /* Smarty version Smarty-3.1.8, created on 2012-06-27 19:16:06
         compiled from "C:\AppServ/www/app_ai/app/templates\front_main\main.tpl" */ ?>
<?php /*%%SmartyHeaderCode:317754feb8626ab8ea6-44753265%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '993a5291c4d50c53eb19b990ea5d124ad23af6df' => 
    array (
      0 => 'C:\\AppServ/www/app_ai/app/templates\\front_main\\main.tpl',
      1 => 1340736394,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '317754feb8626ab8ea6-44753265',
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
  'unifunc' => 'content_4feb8626c8d5e2_68381925',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4feb8626c8d5e2_68381925')) {function content_4feb8626c8d5e2_68381925($_smarty_tpl) {?><?php $_smarty_tpl->tpl_vars["main"] = new Smarty_variable("front_main/header.tpl", null, 0);?>
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['main']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['body']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ('front_main/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>