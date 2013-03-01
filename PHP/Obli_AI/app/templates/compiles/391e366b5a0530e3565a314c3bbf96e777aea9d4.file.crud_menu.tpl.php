<?php /* Smarty version Smarty-3.1.8, created on 2012-07-03 17:26:56
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Categoria\crud_menu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:384ff3556fa52e22-76314068%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '391e366b5a0530e3565a314c3bbf96e777aea9d4' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Categoria\\crud_menu.tpl',
      1 => 1341347212,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '384ff3556fa52e22-76314068',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff3556fa860e8_52078735',
  'variables' => 
  array (
    'controller' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff3556fa860e8_52078735')) {function content_4ff3556fa860e8_52078735($_smarty_tpl) {?><div id="cont_menu">
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