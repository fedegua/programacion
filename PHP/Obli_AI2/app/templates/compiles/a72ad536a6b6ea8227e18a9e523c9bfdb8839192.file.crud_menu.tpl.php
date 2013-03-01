<?php /* Smarty version Smarty-3.1.8, created on 2012-07-03 16:45:09
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Material\crud_menu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:157744ff34b4644c0d6-81496464%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a72ad536a6b6ea8227e18a9e523c9bfdb8839192' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Material\\crud_menu.tpl',
      1 => 1341344704,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '157744ff34b4644c0d6-81496464',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff34b46480ed3_59630027',
  'variables' => 
  array (
    'controller' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff34b46480ed3_59630027')) {function content_4ff34b46480ed3_59630027($_smarty_tpl) {?><div id="cont_menu">
  <?php echo $_smarty_tpl->getSubTemplate ('Main/search_box.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div id="menu_local">

			<ul id="det">
				<li id="print"> <a href="#"> Print</a></li>
           		<li id="delete"> <a href="javascript:send('?controller=<?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
&action=delete','form1')" title="Delete <?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
"> Delete</a></li>
                
				<li id="list"> <a href="?controller=<?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
&action=crud" title="Retrieve <?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
">Retrieve</a></li>
                                    <li id="new"><a href="?controller=<?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
&action=create" title="Create <?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
">Create</a></li>
			</ul>
			
		</div>
        
</div>

<?php }} ?>