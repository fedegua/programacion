<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 20:03:03
         compiled from "E:\AppServ/www/Obli_AI/app/templates\Main\header_log.tpl" */ ?>
<?php /*%%SmartyHeaderCode:152634ff4cba731f9d7-84889305%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7acc550f6a2938c166183c886a10cefcebbf639d' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\Main\\header_log.tpl',
      1 => 1340825428,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '152634ff4cba731f9d7-84889305',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'usr' => 0,
    'last_log' => 0,
    'last_ip' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff4cba7387ef8_59139841',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4cba7387ef8_59139841')) {function content_4ff4cba7387ef8_59139841($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>APP Arquitectura de la informaci&oacute;n</title>
	<link rel="stylesheet" href="css/css.css" />
     <link rel="stylesheet" href="css/estilos.css" />
	<script src="javascript/functions.js"> </script>
	<link type="text/css" href="javascript/jqueryui/css/start/jquery-ui-1.8.18.custom.css" rel="stylesheet" />	
		<script type="text/javascript" src="javascript/jqueryui/js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="javascript/jqueryui/js/jquery-ui-1.8.18.custom.min.js"></script>	
</head>
<body>
<br />

<div id="header">
			<h1>&nbsp;</h1>
<br />
 <div id="log">Usuario: <?php echo $_smarty_tpl->tpl_vars['usr']->value;?>
 ultimo inicio de sesion: <?php echo $_smarty_tpl->tpl_vars['last_log']->value;?>
 ultima IP: <?php echo $_smarty_tpl->tpl_vars['last_ip']->value;?>
 <a href="?controller=login&amp;action=signout">Sign out</a></div>
</div>

<?php }} ?>