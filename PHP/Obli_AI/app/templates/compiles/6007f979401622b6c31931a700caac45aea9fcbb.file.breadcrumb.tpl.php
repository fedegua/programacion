<?php /* Smarty version Smarty-3.1.8, created on 2012-07-03 14:02:41
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Main\breadcrumb.tpl" */ ?>
<?php /*%%SmartyHeaderCode:133864ff325b1808b80-47412604%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6007f979401622b6c31931a700caac45aea9fcbb' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Main\\breadcrumb.tpl',
      1 => 1340808358,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '133864ff325b1808b80-47412604',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'breadcrumb' => 0,
    'href' => 0,
    'k' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff325b187eba4_80914795',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff325b187eba4_80914795')) {function content_4ff325b187eba4_80914795($_smarty_tpl) {?><?php if (is_array($_smarty_tpl->tpl_vars['breadcrumb']->value)){?>
 <h2>Usted est&aacute; en 
 <?php  $_smarty_tpl->tpl_vars['href'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['href']->_loop = false;
 $_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['breadcrumb']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['href']->key => $_smarty_tpl->tpl_vars['href']->value){
$_smarty_tpl->tpl_vars['href']->_loop = true;
 $_smarty_tpl->tpl_vars['k']->value = $_smarty_tpl->tpl_vars['href']->key;
?>
 	<?php if (!isset($_smarty_tpl->tpl_vars['href']->value)||empty($_smarty_tpl->tpl_vars['href']->value)){?>
		<?php echo $_smarty_tpl->tpl_vars['k']->value;?>

    <?php }else{ ?>
     	<a href="<?php echo $_smarty_tpl->tpl_vars['href']->value;?>
"> <?php echo $_smarty_tpl->tpl_vars['k']->value;?>
</a> > 
    <?php }?>
 <?php } ?>   
 </h2>
<?php }?> <?php }} ?>