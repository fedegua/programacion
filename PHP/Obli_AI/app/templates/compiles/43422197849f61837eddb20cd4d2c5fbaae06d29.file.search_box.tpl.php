<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 20:03:03
         compiled from "E:\AppServ/www/Obli_AI/app/templates\Main\search_box.tpl" */ ?>
<?php /*%%SmartyHeaderCode:293714ff4cba75318e2-79398177%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '43422197849f61837eddb20cd4d2c5fbaae06d29' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\Main\\search_box.tpl',
      1 => 1338412938,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '293714ff4cba75318e2-79398177',
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
  'unifunc' => 'content_4ff4cba754d105_53069193',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4cba754d105_53069193')) {function content_4ff4cba754d105_53069193($_smarty_tpl) {?>
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