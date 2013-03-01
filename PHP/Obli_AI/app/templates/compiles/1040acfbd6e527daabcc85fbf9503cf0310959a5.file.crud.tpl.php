<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 20:03:08
         compiled from "E:\AppServ/www/Obli_AI/app/templates\Hallazgo\crud.tpl" */ ?>
<?php /*%%SmartyHeaderCode:9844ff4cbac81d699-13493302%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1040acfbd6e527daabcc85fbf9503cf0310959a5' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\Hallazgo\\crud.tpl',
      1 => 1341430981,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9844ff4cbac81d699-13493302',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'status' => 0,
    'msg' => 0,
    'rows' => 0,
    'row' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff4cbac902537_88351060',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4cbac902537_88351060')) {function content_4ff4cbac902537_88351060($_smarty_tpl) {?><div class="section">
<div class="title">
        <?php echo $_smarty_tpl->getSubTemplate ('Hallazgo/crud_menu_mantenimiento.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

    <h1>&#8226; CRUD HAllazgo &#8226;</h1>
    <h2><?php echo $_smarty_tpl->getSubTemplate ('Main/breadcrumb.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</h2>
</div>
<?php echo $_smarty_tpl->getSubTemplate ('Hallazgo/crud_menu.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

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
      <th width="92">Descripción</th>
      <th width="117">Latitud</th>
      <th width="93">Longitud</th>
      <th width="355">Fecha hallazgo</th>
      <th width="212">Actualizado</th>
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
      <td><a href="?controller=hallazgo&action=update&id=<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
" title="Update this article"><?php echo $_smarty_tpl->tpl_vars['row']->value['descripcion'];?>
</a></td>
      <td><?php echo $_smarty_tpl->tpl_vars['row']->value['latitud'];?>
</td>
      <td><?php echo $_smarty_tpl->tpl_vars['row']->value['longitud'];?>
 </td>
      <td><?php echo $_smarty_tpl->tpl_vars['row']->value['fecha_hallazgo'];?>
</td>
      <td><?php echo $_smarty_tpl->tpl_vars['row']->value['actualizado'];?>
</td>
      </tr>
    <?php } ?>

  </table>
</form>
<?php }} ?>