<?php /* Smarty version Smarty-3.1.8, created on 2012-07-05 00:15:15
         compiled from "C:\AppServ/www/Obli_AI/app/templates\front_main\header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:121574ff28ef6ce0385-02944017%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e4d480b7991ecb10c2c08adc48ffe1294f4401b2' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\front_main\\header.tpl',
      1 => 1341458109,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '121574ff28ef6ce0385-02944017',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff28ef6cf3e96_73841163',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff28ef6cf3e96_73841163')) {function content_4ff28ef6cf3e96_73841163($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="author" content="Marcelo Caiafa">
	<meta name="description" content="Sitio de hallazgos arqueologicos registrados en el territorio uruguayo">
	<meta name="keywords" content="hallazgos,hallazgo,arqueologia,historia,uruguay,arqueologo,fosiles,reliquias,antiguedades">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <title>ArqueologiaUruguay</title>
	<link rel="stylesheet" href="css/estilos_front.css" />
	<script src="javascript/functions.js"> </script>
		<link type="text/css" href="javascript/jqueryui/css/start/jquery-ui-1.8.18.custom.css" rel="stylesheet" />	
		<script type="text/javascript" src="javascript/jqueryui/js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="javascript/jqueryui/js/jquery-ui-1.8.18.custom.min.js"></script>	
</head>
<body>
<br />
<div id="header">
<div dir="logo_ort"><a href="/app_ai/" title="ArqueologiaUruguay"><img src="img/logo.jpg" border="0" title="Universidad ORT Uruguay" alt="Logo Universidad ORT Uruguay" /></a></div>
</div>
<div id="menu_principal">
<a href="?controller=index&amp;action=index" title="Listado de nuevos hallazgos">Inicio</a> | <a href="?controller=index&amp;action=contacto" title="Secci&oacute;n contacto">Contacto</a> | <a href="?controller=categoria&action=listado" title="Listado de categor&iacute;as">Categor&iacute;as</a> | <a href="?controller=ciudad&action=listado" title="Listado de ciudades">Ciudades</a> | <a href="?controller=proyecto&action=listado&solo=a" title="Listado de proyectos">Proyecto</a> | <a href="?controller=autor&action=listado" title="Listado de autores">Autores</a>
<div id="search_box"><?php echo $_smarty_tpl->getSubTemplate ('front_main/search_box.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</div>
</div>
<?php }} ?>