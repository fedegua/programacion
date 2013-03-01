<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 16:26:15
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Autor\crud_menu_mantenimiento.tpl" */ ?>
<?php /*%%SmartyHeaderCode:172754ff495a3e80bc6-58072784%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1336d28494c16bcdaa077e6542fafa59e53cc788' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Autor\\crud_menu_mantenimiento.tpl',
      1 => 1341429944,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '172754ff495a3e80bc6-58072784',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff495a3e889c5_85514342',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff495a3e889c5_85514342')) {function content_4ff495a3e889c5_85514342($_smarty_tpl) {?>
    <ul id="hola">
        <li > <a href="?controller=hallazgo&action=crud"> Crud Hallazgo</a></li>
        <li > <a href="?controller=autor&action=crud"> Crud Autor</a></li>
        <li > <a href="?controller=material&action=crud"> Crud Material</a></li>
        <li > <a href="?controller=categoria&action=crud"> Crud Categoria</a></li>
        <li > <a href="?controller=proyecto&action=crud"> Crud Proyecto</a></li>

    </ul>

 
<?php }} ?>