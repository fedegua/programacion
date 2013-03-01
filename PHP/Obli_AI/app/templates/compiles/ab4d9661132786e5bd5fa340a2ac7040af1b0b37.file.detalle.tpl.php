<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 19:54:36
         compiled from "E:\AppServ/www/Obli_AI/app/templates\Hallazgo\detalle.tpl" */ ?>
<?php /*%%SmartyHeaderCode:117694ff4c9acae8e19-77718633%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ab4d9661132786e5bd5fa340a2ac7040af1b0b37' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\Hallazgo\\detalle.tpl',
      1 => 1341427794,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '117694ff4c9acae8e19-77718633',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'controller' => 0,
    'id' => 0,
    'proyecto_id' => 0,
    'ciudad' => 0,
    'descripcion' => 0,
    'latitud' => 0,
    'longitud' => 0,
    'fecha_hallazgo' => 0,
    'creado' => 0,
    'actualizado' => 0,
    'material_name' => 0,
    'autor_name' => 0,
    'ciudad_name' => 0,
    'proyecto_name' => 0,
    'categoria_name' => 0,
    'imagen' => 0,
    'nombre' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff4c9acc05157_88077091',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4c9acc05157_88077091')) {function content_4ff4c9acc05157_88077091($_smarty_tpl) {?><div class="section">
<div class="title">
  <h1>&#8226; Deltalle de Hallazgo &#8226;</h1>
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
      <td ><label for="latitud">Latitudo:</label></td>
      <td><?php echo $_smarty_tpl->tpl_vars['latitud']->value;?>
</td>
    </tr>    
    <tr>
      <td><label for="longitud">Longitud: </label></td>
      <td><?php echo $_smarty_tpl->tpl_vars['longitud']->value;?>
</td>
    </tr>
    <tr>
      <td>Fecha del hallazgo:</td>
      <td><?php if (empty($_smarty_tpl->tpl_vars['fecha_hallazgo']->value)){?>No disponible<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['fecha_hallazgo']->value;?>
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
      <td>Material:</td>
      <td><?php if (empty($_smarty_tpl->tpl_vars['material_name']->value)){?>No disponible<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['material_name']->value;?>
<?php }?></td>
    </tr>
    <tr><tr>
      <td>Autor:</td>
      <td><?php if (empty($_smarty_tpl->tpl_vars['autor_name']->value)){?>No disponible<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['autor_name']->value;?>
<?php }?></td>
    </tr><tr>
      <td>Ciudad:</td>
      <td><?php if (empty($_smarty_tpl->tpl_vars['ciudad_name']->value)){?>No disponible<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['ciudad_name']->value;?>
<?php }?></td>
    </tr><tr>
      <td>Proyecto:</td>
      <td><?php if (empty($_smarty_tpl->tpl_vars['proyecto_name']->value)){?>No disponible<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['proyecto_name']->value;?>
<?php }?></td>
    </tr>
    </tr><tr>
      <td>Categoria:</td>
      <td><?php if (empty($_smarty_tpl->tpl_vars['proyecto_name']->value)){?>No disponible<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['categoria_name']->value;?>
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