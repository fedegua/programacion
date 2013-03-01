<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 20:03:03
         compiled from "E:\AppServ/www/Obli_AI/app/templates\Autor\crud_menu_mantenimiento.tpl" */ ?>
<?php /*%%SmartyHeaderCode:124694ff4cba7499ec7-88041414%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0ee73dc68e0474313ac5f93bd68fa79cb260dd72' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\Autor\\crud_menu_mantenimiento.tpl',
      1 => 1341429944,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '124694ff4cba7499ec7-88041414',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff4cba749e490_42530474',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4cba749e490_42530474')) {function content_4ff4cba749e490_42530474($_smarty_tpl) {?>
    <ul id="hola">
        <li > <a href="?controller=hallazgo&action=crud"> Crud Hallazgo</a></li>
        <li > <a href="?controller=autor&action=crud"> Crud Autor</a></li>
        <li > <a href="?controller=material&action=crud"> Crud Material</a></li>
        <li > <a href="?controller=categoria&action=crud"> Crud Categoria</a></li>
        <li > <a href="?controller=proyecto&action=crud"> Crud Proyecto</a></li>

    </ul>

 
<?php }} ?>