<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 20:03:03
         compiled from "E:\AppServ/www/Obli_AI/app/templates\Autor\crud_menu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:49384ff4cba74d7424-88630915%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ebf97905ea893af5324be76622d8412ebd24ac08' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\Autor\\crud_menu.tpl',
      1 => 1341336969,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '49384ff4cba74d7424-88630915',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'controller' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff4cba74feba9_33398725',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4cba74feba9_33398725')) {function content_4ff4cba74feba9_33398725($_smarty_tpl) {?><div id="cont_menu">
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