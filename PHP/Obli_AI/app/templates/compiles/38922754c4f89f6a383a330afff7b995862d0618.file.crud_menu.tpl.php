<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 20:03:08
         compiled from "E:\AppServ/www/Obli_AI/app/templates\Hallazgo\crud_menu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:66784ff4cbac97e6e7-59756300%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '38922754c4f89f6a383a330afff7b995862d0618' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\Hallazgo\\crud_menu.tpl',
      1 => 1341180486,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '66784ff4cbac97e6e7-59756300',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'controller' => 0,
    'ciudad' => 0,
    'proyecto_id' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff4cbac9af983_16656668',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4cbac9af983_16656668')) {function content_4ff4cbac9af983_16656668($_smarty_tpl) {?><div id="cont_menu">
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
&action=create&ciudad=<?php echo $_smarty_tpl->tpl_vars['ciudad']->value;?>
&proyecto=<?php echo $_smarty_tpl->tpl_vars['proyecto_id']->value;?>
" title="Create <?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
">Create</a></li>
			</ul>
			
		</div>
        
</div>

<?php }} ?>