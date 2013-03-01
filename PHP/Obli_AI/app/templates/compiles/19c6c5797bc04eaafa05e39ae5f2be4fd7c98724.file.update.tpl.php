<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 21:03:33
         compiled from "E:\AppServ/www/Obli_AI/app/templates\Autor\update.tpl" */ ?>
<?php /*%%SmartyHeaderCode:27344ff4d9d55431a7-93833248%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '19c6c5797bc04eaafa05e39ae5f2be4fd7c98724' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\Autor\\update.tpl',
      1 => 1341243728,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '27344ff4d9d55431a7-93833248',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'controller' => 0,
    'id' => 0,
    'nombre' => 0,
    'apellido' => 0,
    'documento' => 0,
    'telefono' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff4d9d55cbcb6_82036806',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4d9d55cbcb6_82036806')) {function content_4ff4d9d55cbcb6_82036806($_smarty_tpl) {?>
<div class="section">
<div class="title">
  <h1>&#8226; UPDATE Autor &#8226;</h1>
    <h2><?php echo $_smarty_tpl->getSubTemplate ('Main/breadcrumb.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</h2>
</div>
<form action="?controller=<?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
&action=update" method="post" enctype="multipart/form-data" name="form1" id="form1">
<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
" />
<input type="hidden" name="do_submit" value="1" />
<fieldset id="dateUserSolo">
<legend>Autor Info</legend>
  <table class="datos">
    <tr>
      <td ><label for="nombre">Nombre (*):</label></td>
      <td>
        <input type="text" name="nombre" id="nombre" value="<?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
" />
        </td>
    </tr>    
    <tr>
      <td><label for="apellido">Apellido (*): </label></td>
      <td><input type="text" name="apellido" id="apellido" value="<?php echo $_smarty_tpl->tpl_vars['apellido']->value;?>
" /></td>
    </tr>
    <tr>
      <td><label for="documento">Documento (*): </label></td>
      <td><input type="text" name="documento" id="documento" value="<?php echo $_smarty_tpl->tpl_vars['documento']->value;?>
" /></td>
    </tr>
    <tr>
      <td><label for="telefono">Telefono: </label></td>
      <td><input type="text" name="telefono" id="telefono" value="<?php echo $_smarty_tpl->tpl_vars['telefono']->value;?>
" /></td>
    </tr>
    <tr>
      <td>Imagen:</td>
      <td><input type="file" name="file" id="file" /></td>
    </tr>
    
    <tr>
      <td></td>
      <td align="right"><?php echo $_smarty_tpl->getSubTemplate ('Main/update_buttons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</td>
    </tr>
   
  </table>
 
</fieldset>

</form><?php }} ?>