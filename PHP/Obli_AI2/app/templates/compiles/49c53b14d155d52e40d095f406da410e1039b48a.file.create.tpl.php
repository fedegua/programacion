<?php /* Smarty version Smarty-3.1.8, created on 2012-07-03 14:36:18
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Autor\create.tpl" */ ?>
<?php /*%%SmartyHeaderCode:48294ff32d92392a26-50575445%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '49c53b14d155d52e40d095f406da410e1039b48a' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Autor\\create.tpl',
      1 => 1341244416,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '48294ff32d92392a26-50575445',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'controller' => 0,
    'id' => 0,
    'documento' => 0,
    'nombre' => 0,
    'apellido' => 0,
    'telefono' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff32d92511136_95924189',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff32d92511136_95924189')) {function content_4ff32d92511136_95924189($_smarty_tpl) {?>
<div class="section">
<div class="title">
  <h1>&#8226; CREATE Autor &#8226;</h1>
    <h2><?php echo $_smarty_tpl->getSubTemplate ('Main/breadcrumb.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</h2>
</div>
<form action="?controller=<?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
&action=create" method="post" enctype="multipart/form-data" name="form1" id="form1">
<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
" />
<input type="hidden" name="do_submit" value="1" />
<fieldset id="dateUserSolo">
<legend>Autor Info</legend>
  <table class="datos">
    <tr>
      <td ><label for="documento">Documento (*):</label></td>
      <td>
        <input type="text" name="documento" id="documento" value="<?php echo $_smarty_tpl->tpl_vars['documento']->value;?>
" />
      </td>
    </tr>    
    <tr>
      <td><label for="nombre">Nombre (*): </label></td>
      <td><input type="text" name="nombre" id="nombre" value="<?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
" /></td>
    </tr>
    <tr>
      <td><label for="apellido">Apellido (*): </label></td>
      <td><input type="text" name="apellido" id="apellido" value="<?php echo $_smarty_tpl->tpl_vars['apellido']->value;?>
" /></td>
    </tr>
    <tr>
      <td>telefono:</td>
      <td><input type="text" name="telefono" id="telefono" value="<?php echo $_smarty_tpl->tpl_vars['telefono']->value;?>
" /></td>
    </tr>
    <tr>
      <td>Imagen:</td>
      <td><input name="file" type="file" id="file" /></td>
    </tr>
    
    <tr>
      <td></td>
      <td align="right"><?php echo $_smarty_tpl->getSubTemplate ('Main/create_buttons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</td>
    </tr>
   
  </table>
 
</fieldset>

</form><?php }} ?>