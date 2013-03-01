<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 21:39:16
         compiled from "E:\AppServ/www/Obli_AI/app/templates\Proyecto\detalle.tpl" */ ?>
<?php /*%%SmartyHeaderCode:105144ff4d6d0121787-14406042%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f762c65d760818efe3d965366efbd30533666def' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\Proyecto\\detalle.tpl',
      1 => 1341448671,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '105144ff4d6d0121787-14406042',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff4d6d01eb208_05726863',
  'variables' => 
  array (
    'controller' => 0,
    'id' => 0,
    'proyecto_id' => 0,
    'ciudad' => 0,
    'descripcion' => 0,
    'nombre' => 0,
    'ciudad_name' => 0,
    'creado' => 0,
    'actualizado' => 0,
    'imagen' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4d6d01eb208_05726863')) {function content_4ff4d6d01eb208_05726863($_smarty_tpl) {?><div class="section">
<div class="title">
  <h1>&#8226; Deltalle de Proyecto &#8226;</h1>
    <h2><?php echo $_smarty_tpl->getSubTemplate ('Main/breadcrumb.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</h2>
</div>
<form action="?controller=<?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
&action=create" method="post" enctype="multipart/form-data" name="form1" id="form1">
<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
" />
<input type="hidden" name="do_submit" value="1" />
<input type="hidden" name="proyecto" value="<?php echo $_smarty_tpl->tpl_vars['proyecto_id']->value;?>
"  />
<input type="hidden" name="ciudad" value="<?php echo $_smarty_tpl->tpl_vars['ciudad']->value;?>
"  />
<fieldset id="dateUserSolo">
<legend><?php echo $_smarty_tpl->tpl_vars['descripcion']->value;?>
</legend>
  <table class="datos">
    <tr>
      <td ><label for="nombre">Nombre:</label></td>
      <td><?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
</td>
    </tr>    
    <tr>
      <td><label for="descripcion">Descripcion: </label></td>
      <td><?php echo $_smarty_tpl->tpl_vars['descripcion']->value;?>
</td>
    </tr>   
        <tr>
      <td>Ciudad:</td>
      <td><?php if (empty($_smarty_tpl->tpl_vars['ciudad_name']->value)){?>No disponible<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['ciudad_name']->value;?>
<?php }?></td>
    </tr>
    <tr>
      <td>Ingresado:</td>
      <td><?php echo $_smarty_tpl->tpl_vars['creado']->value;?>
</td>
    </tr>
    <tr>
      <td>Actualizado:</td>
      <td><?php if (empty($_smarty_tpl->tpl_vars['actualizado']->value)){?>No disponible<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['actualizado']->value;?>
<?php }?></td>
    </tr>

    <tr>
      <td colspan="2" align="center"><img src="uploads/<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['imagen']->value;?>
" title="<?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
" alt="<?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
" /></td>
      </tr>
   
  </table>
 
</fieldset>

</form><?php }} ?>