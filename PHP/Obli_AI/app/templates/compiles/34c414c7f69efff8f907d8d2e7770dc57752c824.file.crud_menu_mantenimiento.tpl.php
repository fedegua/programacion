<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 20:03:08
         compiled from "E:\AppServ/www/Obli_AI/app/templates\Hallazgo\crud_menu_mantenimiento.tpl" */ ?>
<?php /*%%SmartyHeaderCode:90094ff4cbac940c88-92779635%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '34c414c7f69efff8f907d8d2e7770dc57752c824' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\Hallazgo\\crud_menu_mantenimiento.tpl',
      1 => 1341430527,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '90094ff4cbac940c88-92779635',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff4cbac945301_38922862',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4cbac945301_38922862')) {function content_4ff4cbac945301_38922862($_smarty_tpl) {?>
    <ul id="hola">
        <li > <a href="?controller=hallazgo&action=crud"> Crud Hallazgo</a></li>
        <li > <a href="?controller=autor&action=crud"> Crud Autor</a></li>
        <li > <a href="?controller=material&action=crud"> Crud Material</a></li>
        <li > <a href="?controller=categoria&action=crud"> Crud Categoria</a></li>
        <li > <a href="?controller=proyecto&action=crud"> Crud Proyecto</a></li>

    </ul>

 
<?php }} ?>