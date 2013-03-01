<?php /* Smarty version Smarty-3.1.8, created on 2012-07-03 18:58:33
         compiled from "C:\AppServ/www/Obli_AI/app/templates\front_main\search_box.tpl" */ ?>
<?php /*%%SmartyHeaderCode:323704ff28ef6d0f399-24879397%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9d4b370269ae5ffc2736fa416b6209d248557053' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\front_main\\search_box.tpl',
      1 => 1341352701,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '323704ff28ef6d0f399-24879397',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff28ef6d48973_23975961',
  'variables' => 
  array (
    'search' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff28ef6d48973_23975961')) {function content_4ff28ef6d48973_23975961($_smarty_tpl) {?><form action="?controller=index&action=search" method="post">
Search: <input type="text" name="search" value="<?php echo $_smarty_tpl->tpl_vars['search']->value;?>
"  />
<input type="hidden" name="do_submit" value="1" />
<label>
  <input type="submit" name="button" id="button" value="Buscar" />
</label> 
<a href="?controller=login&amp;action=signin" title="Ingresar al sistema" target="_blank">Login</a>
</form>
<?php }} ?>