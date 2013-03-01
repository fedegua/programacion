<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 20:46:38
         compiled from "E:\AppServ/www/Obli_AI/app/templates\Proyecto\listadosolo.tpl" */ ?>
<?php /*%%SmartyHeaderCode:95434ff4d5de0ab949-27431712%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'da2ecd2f701f3ad2f499162b34785b1b2fd004c1' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\Proyecto\\listadosolo.tpl',
      1 => 1341445461,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '95434ff4d5de0ab949-27431712',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'rows' => 0,
    'row' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff4d5de155782_77804731',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4d5de155782_77804731')) {function content_4ff4d5de155782_77804731($_smarty_tpl) {?><div class="section">
<div class="title">
    <h1>&#8226; Listado Proyecto &#8226;</h1>
    <h2><?php echo $_smarty_tpl->getSubTemplate ('Main/breadcrumb.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</h2>
</div>
<br />
<form id="form1" name="form1" method="post" action="">
    <table width="90" class="listado">
    
    <tr>
      <th width="80">Nombre</th>
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
      <td><a href="?controller=proyecto&action=detalle&proyecto=<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
" title="Ir a listado de <?php echo $_smarty_tpl->tpl_vars['row']->value['nombre'];?>
"><?php echo $_smarty_tpl->tpl_vars['row']->value['nombre'];?>
</a></td>
      </tr>
    <?php } ?>

  </table>
</form>
<?php }} ?>