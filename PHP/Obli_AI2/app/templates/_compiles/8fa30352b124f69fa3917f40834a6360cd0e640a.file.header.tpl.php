<?php /* Smarty version Smarty-3.1.8, created on 2012-06-27 19:16:06
         compiled from "C:\AppServ/www/app_ai/app/templates\front_main\header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:315964feb8626cce835-32565738%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8fa30352b124f69fa3917f40834a6360cd0e640a' => 
    array (
      0 => 'C:\\AppServ/www/app_ai/app/templates\\front_main\\header.tpl',
      1 => 1340823830,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '315964feb8626cce835-32565738',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4feb8626cdb556_21287775',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4feb8626cdb556_21287775')) {function content_4feb8626cdb556_21287775($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="author" content="Marcelo Caiafa">
	<meta name="description" content="Arquitectura de la informaci&oacute;n, app art&iacute;los">
	<meta name="keywords" content="tv,audio,video,freezer">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <title>Universidad ORT URuguay Arquitectura de la informaci&oacute;n</title>
	<link rel="stylesheet" href="css/estilos_front.css" />
	<script src="javascript/functions.js"> </script>
		<link type="text/css" href="javascript/jqueryui/css/start/jquery-ui-1.8.18.custom.css" rel="stylesheet" />	
		<script type="text/javascript" src="javascript/jqueryui/js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="javascript/jqueryui/js/jquery-ui-1.8.18.custom.min.js"></script>	
</head>
<body>
<br />
<div id="header">
<div dir="logo_ort"><a href="/app_ai/" title="Universidad ORT Uruguay"><img src="img/logo.jpg" border="0" title="Universidad ORT Uruguay" alt="Logo Universidad ORT Uruguay" /></a></div>
</div>
<div id="menu_principal">
<a href="?controller=index&amp;action=index" title="Listado de nuevos art&iacute;culos">Inicio</a> | <a href="?controller=index&amp;action=contacto" title="Secci&oacute;n contacto">Contacto</a> | <a href="?controller=categoria&action=listado" title="Listado de categor&iacute;as">Categor&iacute;as</a> 
<div id="search_box"><?php echo $_smarty_tpl->getSubTemplate ('front_main/search_box.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</div> 
</div>
<?php }} ?>