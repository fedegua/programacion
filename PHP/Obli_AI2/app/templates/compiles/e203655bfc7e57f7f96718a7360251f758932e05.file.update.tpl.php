<?php /* Smarty version Smarty-3.1.8, created on 2012-07-03 16:48:33
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Material\update.tpl" */ ?>
<?php /*%%SmartyHeaderCode:79134ff34c919d0d34-19966342%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e203655bfc7e57f7f96718a7360251f758932e05' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Material\\update.tpl',
      1 => 1341341784,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '79134ff34c919d0d34-19966342',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'controller' => 0,
    'id' => 0,
    'nombre' => 0,
    'codigo' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff34c91abe569_23692427',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff34c91abe569_23692427')) {function content_4ff34c91abe569_23692427($_smarty_tpl) {?>
<div class="section">
<div class="title">
  <h1>&#8226; UPDATE Material &#8226;</h1>
    <h2><?php echo $_smarty_tpl->getSubTemplate ('Main/breadcrumb.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</h2>
</div>
<form action="?controller=<?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
&action=update" method="post" enctype="multipart/form-data" name="form1" id="form1">
<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
" />
<input type="hidden" name="do_submit" value="1" />
<fieldset id="dateUserSolo">
<legend>Material Info</legend>
  <table class="datos">
    <tr>
      <td ><label for="nombre">Nombre (*):</label></td>
      <td>
        <input type="text" name="nombre" id="nombre" value="<?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
" />
        </td>
    </tr>    
    <tr>
      <td><label for="codigo">Codigo (*): </label></td>
      <td><input type="text" name="codigo" id="codigo" value="<?php echo $_smarty_tpl->tpl_vars['codigo']->value;?>
" /></td>
    </tr>
    <tr>
      <td></td>
      <td align="right"><?php echo $_smarty_tpl->getSubTemplate ('Main/update_buttons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</td>
    </tr>
   
  </table>
 
</fieldset>

</form><?php }} ?>