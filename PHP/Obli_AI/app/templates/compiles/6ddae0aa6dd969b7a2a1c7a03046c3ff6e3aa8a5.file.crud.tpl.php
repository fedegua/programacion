<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 16:29:22
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Autor\crud.tpl" */ ?>
<?php /*%%SmartyHeaderCode:137494ff325b163c078-03674180%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6ddae0aa6dd969b7a2a1c7a03046c3ff6e3aa8a5' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Autor\\crud.tpl',
      1 => 1341430158,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '137494ff325b163c078-03674180',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff325b17ea961_28190019',
  'variables' => 
  array (
    'status' => 0,
    'msg' => 0,
    'rows' => 0,
    'row' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff325b17ea961_28190019')) {function content_4ff325b17ea961_28190019($_smarty_tpl) {?><div class="section">
<div class="title">
    <?php echo $_smarty_tpl->getSubTemplate ('Autor/crud_menu_mantenimiento.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

    <h1>&#8226; CRUD Autor &#8226;</h1>
    <h2><?php echo $_smarty_tpl->getSubTemplate ('Main/breadcrumb.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</h2>
</div>

<?php echo $_smarty_tpl->getSubTemplate ('Autor/crud_menu.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php if ($_smarty_tpl->tpl_vars['status']->value){?>
<div id="messages" class="appMsg_<?php echo $_smarty_tpl->tpl_vars['status']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['msg']->value;?>
</div>
<?php }?> 
<form id="form1" name="form1" method="post" action="">
    <table width="986" class="listado">
    
    <tr>
      <th width="23">&nbsp;</th>
      <th width="62">ID</th>
      <th width="92">Documento</th>
      <th width="117">Nombre</th>
      <th width="93">Apellido</th>
      <th width="355">Created</th>
      <th width="212">Updated</th>
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
      <td><label>
        <input name="id[]" type="checkbox" id="id[]" value="<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
" />
      </label></td>
      <td><?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
</td>
      <td><a href="?controller=autor&action=update&id=<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
" title="Update this article"><?php echo $_smarty_tpl->tpl_vars['row']->value['documento'];?>
</a></td>
      <td><?php echo $_smarty_tpl->tpl_vars['row']->value['nombre'];?>
</td>
      <td><?php echo $_smarty_tpl->tpl_vars['row']->value['apellido'];?>
 </td>
      <td><?php echo $_smarty_tpl->tpl_vars['row']->value['creado'];?>
</td>
      <td><?php echo $_smarty_tpl->tpl_vars['row']->value['actualizado'];?>
</td>
      </tr>
    <?php } ?>

  </table>
</form>
<?php }} ?>