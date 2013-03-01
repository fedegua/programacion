<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 19:47:55
         compiled from "E:\AppServ/www/Obli_AI/app/templates\front_main\search_box.tpl" */ ?>
<?php /*%%SmartyHeaderCode:105514ff4c81b7e1d80-10844681%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f55f40bc1d7c214eb4832b77245c17410362c00f' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\front_main\\search_box.tpl',
      1 => 1341352701,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '105514ff4c81b7e1d80-10844681',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'search' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff4c81b874706_56917413',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4c81b874706_56917413')) {function content_4ff4c81b874706_56917413($_smarty_tpl) {?><form action="?controller=index&action=search" method="post">
Search: <input type="text" name="search" value="<?php echo $_smarty_tpl->tpl_vars['search']->value;?>
"  />
<input type="hidden" name="do_submit" value="1" />
<label>
  <input type="submit" name="button" id="button" value="Buscar" />
</label> 
<a href="?controller=login&amp;action=signin" title="Ingresar al sistema" target="_blank">Login</a>
</form>
<?php }} ?>