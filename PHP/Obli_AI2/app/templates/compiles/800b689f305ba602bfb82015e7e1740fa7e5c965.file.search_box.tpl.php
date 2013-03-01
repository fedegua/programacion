<?php /* Smarty version Smarty-3.1.8, created on 2012-06-27 19:16:06
         compiled from "C:\AppServ/www/app_ai/app/templates\front_main\search_box.tpl" */ ?>
<?php /*%%SmartyHeaderCode:95254feb8626d148f2-38218453%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '800b689f305ba602bfb82015e7e1740fa7e5c965' => 
    array (
      0 => 'C:\\AppServ/www/app_ai/app/templates\\front_main\\search_box.tpl',
      1 => 1340820072,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '95254feb8626d148f2-38218453',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'search' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4feb8626d6e9f0_21054433',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4feb8626d6e9f0_21054433')) {function content_4feb8626d6e9f0_21054433($_smarty_tpl) {?><form action="?controller=index&action=search" method="post">
Search: <input type="text" name="search" value="<?php echo $_smarty_tpl->tpl_vars['search']->value;?>
"  />
<input type="hidden" name="do_submit" value="1" />
<label>
  <input type="submit" name="button" id="button" value="Buscar" />
</label> 
<a href="?controller=login&amp;action=signin" title="Ingresar al sistema" target="_blank">Login</a>
</form>
<?php }} ?>