<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 21:36:14
         compiled from "E:\AppServ/www/Obli_AI/app/templates\Proyecto\listado.tpl" */ ?>
<?php /*%%SmartyHeaderCode:307064ff4c8fab412d5-45488026%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '295ae0946e5fd8e92e51b033a67f3141d8eb445b' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\Proyecto\\listado.tpl',
      1 => 1341448486,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '307064ff4c8fab412d5-45488026',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff4c8fabea357_02511487',
  'variables' => 
  array (
    'rows' => 0,
    'row' => 0,
    'solo' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4c8fabea357_02511487')) {function content_4ff4c8fabea357_02511487($_smarty_tpl) {?><div class="section">
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
      <td><a href="<?php if (empty($_smarty_tpl->tpl_vars['solo']->value)){?>?controller=hallazgo&action=listado&proyecto=<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
<?php }else{ ?>?controller=proyecto&action=detalle&id=<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
<?php }?>" title="Ir a listado de <?php echo $_smarty_tpl->tpl_vars['row']->value['nombre'];?>
"><?php echo $_smarty_tpl->tpl_vars['row']->value['nombre'];?>
</a></td>
      </tr>
    <?php } ?>

  </table>
</form>
<?php }} ?>