<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 16:39:14
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Categoria\crud_menu_mantenimiento.tpl" */ ?>
<?php /*%%SmartyHeaderCode:258864ff49be26fab76-82382682%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5dd7daf04bb6d262918f1dab60356f6193b87f1e' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Categoria\\crud_menu_mantenimiento.tpl',
      1 => 1341430520,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '258864ff49be26fab76-82382682',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff49be2700c67_28664967',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff49be2700c67_28664967')) {function content_4ff49be2700c67_28664967($_smarty_tpl) {?>
    <ul id="hola">
        <li > <a href="?controller=hallazgo&action=crud"> Crud Hallazgo</a></li>
        <li > <a href="?controller=autor&action=crud"> Crud Autor</a></li>
        <li > <a href="?controller=material&action=crud"> Crud Material</a></li>
        <li > <a href="?controller=categoria&action=crud"> Crud Categoria</a></li>
        <li > <a href="?controller=proyecto&action=crud"> Crud Proyecto</a></li>

    </ul>

 
<?php }} ?>