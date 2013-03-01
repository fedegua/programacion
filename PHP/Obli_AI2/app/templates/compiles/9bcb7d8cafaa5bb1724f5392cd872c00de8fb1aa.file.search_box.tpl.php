<?php /* Smarty version Smarty-3.1.8, created on 2012-07-03 14:02:41
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Main\search_box.tpl" */ ?>
<?php /*%%SmartyHeaderCode:32884ff325b18ee297-29555384%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9bcb7d8cafaa5bb1724f5392cd872c00de8fb1aa' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Main\\search_box.tpl',
      1 => 1338412938,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '32884ff325b18ee297-29555384',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'controller' => 0,
    'start_period' => 0,
    'end_period' => 0,
    'search' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff325b1964a87_90144349',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff325b1964a87_90144349')) {function content_4ff325b1964a87_90144349($_smarty_tpl) {?>
	<script type="text/javascript">
		// Datepicker
		$(document).ready(function(){
			$('#start_period').datepicker({
				inline: true,
				dateFormat: 'yy-mm-dd'
			});
			$('#end_period').datepicker({
				inline: true,
				dateFormat: 'yy-mm-dd'
			});
		});
	</script>	

<div id="filterResults">
<form action="?controller=<?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
&action=crud" method="post">
<!-- Datepicker -->
    Period:
    <input name="start_period" id="start_period" type="text" value="<?php echo $_smarty_tpl->tpl_vars['start_period']->value;?>
" />
    to
    <input name="end_period" id="end_period" type="text" value="<?php echo $_smarty_tpl->tpl_vars['end_period']->value;?>
" />
Search:

<input type="text" name="search" value="<?php echo $_smarty_tpl->tpl_vars['search']->value;?>
"  />
<label>
  <input type="submit" name="button" id="button" value="Search" />
</label>

</form>
</div><?php }} ?>