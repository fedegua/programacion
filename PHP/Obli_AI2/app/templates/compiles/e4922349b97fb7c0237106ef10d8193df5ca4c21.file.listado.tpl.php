<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 13:56:38
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Ciudad\listado.tpl" */ ?>
<?php /*%%SmartyHeaderCode:203364ff390711a8621-38945534%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e4922349b97fb7c0237106ef10d8193df5ca4c21' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Ciudad\\listado.tpl',
      1 => 1341420989,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '203364ff390711a8621-38945534',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff390712f9c57_29650012',
  'variables' => 
  array (
    'rows' => 0,
    'row' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff390712f9c57_29650012')) {function content_4ff390712f9c57_29650012($_smarty_tpl) {?><div class="section">
<div class="title">
    <h1>&#8226; Listado Ciudades &#8226;</h1>
    <h2><?php echo $_smarty_tpl->getSubTemplate ('Main/breadcrumb.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</h2>
</div>
<br />
    <table width="90" class="listado">
    
    <tr>
      <th width="80">Ciudad</th>
      </tr>
   <?php  $_smarty_tpl->tpl_vars['row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['row']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['rows']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['row']->key => $_smarty_tpl->tpl_vars['row']->value){
$_smarty_tpl->tpl_vars['row']->_loop = true;
?>
   <?php $_smarty_tpl->tpl_vars['txt'] = new Smarty_variable('NO', null, 0);?>
      	<?php if ($_smarty_tpl->tpl_vars['row']->value['active']){?>
      		<?php $_smarty_tpl->tpl_vars['txt'] = new Smarty_variable('YES', null, 0);?>
		<?php }?>
    <tr>
      <td><a href="?controller=proyecto&action=listado&ciudad=<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
" title="Ir a listado de proyecto de <?php echo $_smarty_tpl->tpl_vars['row']->value['ciudad'];?>
"><?php echo $_smarty_tpl->tpl_vars['row']->value['ciudad'];?>
</a></td>
      </tr>
    <?php } ?>

  </table>
<?php }} ?>