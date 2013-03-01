<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 16:39:10
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Proyecto\crud_menu_mantenimiento.tpl" */ ?>
<?php /*%%SmartyHeaderCode:178244ff49bdea670c0-74794534%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '38be1b4fbbb6a5486e8897cbbf4914a7c0af72a1' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Proyecto\\crud_menu_mantenimiento.tpl',
      1 => 1341430542,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '178244ff49bdea670c0-74794534',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff49bdea6d4a0_86117385',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff49bdea6d4a0_86117385')) {function content_4ff49bdea6d4a0_86117385($_smarty_tpl) {?>
    <ul id="hola">
        <li > <a href="?controller=hallazgo&action=crud"> Crud Hallazgo</a></li>
        <li > <a href="?controller=autor&action=crud"> Crud Autor</a></li>
        <li > <a href="?controller=material&action=crud"> Crud Material</a></li>
        <li > <a href="?controller=categoria&action=crud"> Crud Categoria</a></li>
        <li > <a href="?controller=proyecto&action=crud"> Crud Proyecto</a></li>

    </ul>

 
<?php }} ?>