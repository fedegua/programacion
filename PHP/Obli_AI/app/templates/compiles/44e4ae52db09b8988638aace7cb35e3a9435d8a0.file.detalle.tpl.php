<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 21:00:00
         compiled from "E:\AppServ/www/Obli_AI/app/templates\Autor\detalle.tpl" */ ?>
<?php /*%%SmartyHeaderCode:326634ff4d900c130f2-92954425%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '44e4ae52db09b8988638aace7cb35e3a9435d8a0' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\Autor\\detalle.tpl',
      1 => 1341446345,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '326634ff4d900c130f2-92954425',
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
    'creado' => 0,
    'imagen' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff4d900cc7407_25784064',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4d900cc7407_25784064')) {function content_4ff4d900cc7407_25784064($_smarty_tpl) {?><div class="section">
<div class="title">
  <h1>&#8226; Deltalle de Autor &#8226;</h1>
    <h2><?php echo $_smarty_tpl->getSubTemplate ('Main/breadcrumb.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</h2>
</div>
<form action="?controller=<?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
&action=create" method="post" enctype="multipart/form-data" name="form1" id="form1">
<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
" />
<input type="hidden" name="do_submit" value="1" />
<fieldset id="dateUserSolo">
<legend><?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
</legend>
  <table class="datos">
    <tr>
      <td ><label for="nombre">Nomber:</label></td>
      <td><?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
</td>
    </tr>    
    <tr>
      <td><label for="apellido">Apellido: </label></td>
      <td><?php echo $_smarty_tpl->tpl_vars['apellido']->value;?>
</td>
    </tr>
    <tr>
      <td><label for="documento">Documento: </label></td>
      <td><?php echo $_smarty_tpl->tpl_vars['documento']->value;?>
</td>
    </tr>
    <tr>
      <td>Teléfono:</td>
      <td><?php if (empty($_smarty_tpl->tpl_vars['telefono']->value)){?>No disponible<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['telefono']->value;?>
<?php }?></td>
    </tr>
    <tr>
      <td>Ingresado:</td>
      <td><?php echo $_smarty_tpl->tpl_vars['creado']->value;?>
</td>
    </tr>
    
    <tr>
      <td colspan="2" align="center"><img src="uploads/Autor/<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['imagen']->value;?>
" title="<?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
" alt="<?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
" /></td>
      </tr>
   
  </table>
 
</fieldset>

</form><?php }} ?>