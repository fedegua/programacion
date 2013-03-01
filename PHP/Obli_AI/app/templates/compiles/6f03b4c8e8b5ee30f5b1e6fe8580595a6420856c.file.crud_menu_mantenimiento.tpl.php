<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 16:39:07
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Material\crud_menu_mantenimiento.tpl" */ ?>
<?php /*%%SmartyHeaderCode:158264ff49bdb91e394-04873585%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6f03b4c8e8b5ee30f5b1e6fe8580595a6420856c' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Material\\crud_menu_mantenimiento.tpl',
      1 => 1341430538,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '158264ff49bdb91e394-04873585',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff49bdb924901_01057023',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff49bdb924901_01057023')) {function content_4ff49bdb924901_01057023($_smarty_tpl) {?>
    <ul id="hola">
        <li > <a href="?controller=hallazgo&action=crud"> Crud Hallazgo</a></li>
        <li > <a href="?controller=autor&action=crud"> Crud Autor</a></li>
        <li > <a href="?controller=material&action=crud"> Crud Material</a></li>
        <li > <a href="?controller=categoria&action=crud"> Crud Categoria</a></li>
        <li > <a href="?controller=proyecto&action=crud"> Crud Proyecto</a></li>

    </ul>

 
<?php }} ?>