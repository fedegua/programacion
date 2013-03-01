<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 20:03:16
         compiled from "E:\AppServ/www/Obli_AI/app/templates\Hallazgo\update.tpl" */ ?>
<?php /*%%SmartyHeaderCode:243914ff4cbb40a3747-46201822%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'aca315227c884a05e70255fbf1d2dd1a04cf1680' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\Hallazgo\\update.tpl',
      1 => 1341434551,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '243914ff4cbb40a3747-46201822',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'controller' => 0,
    'id' => 0,
    'descripcion' => 0,
    'latitud' => 0,
    'longitud' => 0,
    'fechaHallazgo' => 0,
    'ciudad' => 0,
    'ciudad_id' => 0,
    'proyecto' => 0,
    'proyecto_id' => 0,
    'material' => 0,
    'material_id' => 0,
    'categoria' => 0,
    'categoria_id' => 0,
    'autor' => 0,
    'autor_id' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff4cbb42112f9_07777295',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4cbb42112f9_07777295')) {function content_4ff4cbb42112f9_07777295($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_options')) include 'E:\\AppServ\\Smarty\\libs\\plugins\\function.html_options.php';
?>
	<script type="text/javascript">		    
    $(document).ready(function(){
		//$("select#subcategoria").attr("disabled","disabled");    
    		$("select#ciudad").change(function(){
				$("select#proyecto").attr("disabled","disabled");
				$("select#proyecto").html("<option>Cargando...</option>");
				var id = $("select#ciudad option:selected").attr('value');	 
					$.post("?controller=proyecto&action=combo", {ciudad:id}, function(data){
						if (data=="")
							$("select#proyecto").html("<option value=0>Sin proyecto...</option>");
						else{
							$("select#proyecto").removeAttr("disabled");
							$("select#proyecto").html(data);
						}
					});
	    	});
	});		
	</script>	

<div class="section">
<div class="title">
  <h1>&#8226; UPDATE Hallazgo &#8226;</h1>
    <h2><?php echo $_smarty_tpl->getSubTemplate ('Main/breadcrumb.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</h2>
</div>
<form action="?controller=<?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
&action=update" method="post" enctype="multipart/form-data" name="form1" id="form1">
<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
" />
<input type="hidden" name="do_submit" value="1" />
<fieldset id="dateUserSolo">
<legend>Hallazgo Info</legend>
  <table class="datos">
    <tr>
      <td ><label for="descripcion">Descripción (*):</label></td>
      <td>
        <input type="text" name="descripcion" id="descripcion" value="<?php echo $_smarty_tpl->tpl_vars['descripcion']->value;?>
" />
        </td>
    </tr>    
     <tr>
      <td>Imagen:</td>
      <td><input type="file" name="file" id="file" /></td>
    </tr>
     <tr>
    <tr>
      <td><label for="latitud">Latitud (*): </label></td>
      <td><input type="text" name="latitud" id="latitud" value="<?php echo $_smarty_tpl->tpl_vars['latitud']->value;?>
" /></td>
    </tr>
    <tr>
      <td><label for="longitud">Longitud (*): </label></td>
      <td><input type="text" name="longitud" id="longitud" value="<?php echo $_smarty_tpl->tpl_vars['longitud']->value;?>
" /></td>
    </tr>
     <tr>
      <td><label for="fechaHallazgo">Fecha hallazgo (*): </label></td>
      <td><input type="text" name="fechaHallazgo" id="fechaHallazgo" value="<?php echo $_smarty_tpl->tpl_vars['fechaHallazgo']->value;?>
" /></td>
    </tr>
    <tr>
      <td>Ciudad (*):</td>
      <td><select name="ciudad" id="ciudad">
           	<?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['ciudad']->value,'selected'=>$_smarty_tpl->tpl_vars['ciudad_id']->value),$_smarty_tpl);?>

      	</select></td>
    </tr>
    <tr>
      <td>Proyecto (*):</td>
      <td><select name="proyecto" id="proyecto">
        
         <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['proyecto']->value,'selected'=>$_smarty_tpl->tpl_vars['proyecto_id']->value),$_smarty_tpl);?>
      	
      
      </select></td>
    </tr>
   
      <td>Material (*)</td>
      <td><select name="material" id="material">
      	<option value="NULL"></option>
      	 <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['material']->value,'selected'=>$_smarty_tpl->tpl_vars['material_id']->value),$_smarty_tpl);?>

      	</select>
      </td>
    </tr>
    <tr>
      <td>Categoría (*)</td>
      <td><select name="categoria" id="categoria">
      	<option value="NULL"></option>
      	 <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['categoria']->value,'selected'=>$_smarty_tpl->tpl_vars['categoria_id']->value),$_smarty_tpl);?>

      	</select>
      </td>
    </tr>
    <tr>
      <td>Autor (*)</td>
      <td><select name="autor" id="autor">
      	<option value="NULL"></option>
      	 <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['autor']->value,'selected'=>$_smarty_tpl->tpl_vars['autor_id']->value),$_smarty_tpl);?>

      	</select>
      </td>
    </tr>
    <tr>
      <td></td>
      <td align="right"><?php echo $_smarty_tpl->getSubTemplate ('Main/update_buttons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</td>
    </tr>
   
  </table>
 
</fieldset>

</form><?php }} ?>