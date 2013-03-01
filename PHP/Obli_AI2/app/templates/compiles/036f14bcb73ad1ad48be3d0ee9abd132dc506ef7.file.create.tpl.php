<?php /* Smarty version Smarty-3.1.8, created on 2012-07-03 16:32:22
         compiled from "C:\AppServ/www/Obli_AI/app/templates\Proyecto\create.tpl" */ ?>
<?php /*%%SmartyHeaderCode:278304ff342c2df6193-66770702%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '036f14bcb73ad1ad48be3d0ee9abd132dc506ef7' => 
    array (
      0 => 'C:\\AppServ/www/Obli_AI/app/templates\\Proyecto\\create.tpl',
      1 => 1341343939,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '278304ff342c2df6193-66770702',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff342c2f03dd5_84134108',
  'variables' => 
  array (
    'controller' => 0,
    'id' => 0,
    'nombre' => 0,
    'descripcion' => 0,
    'ciudad' => 0,
    'ciudad_id' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff342c2f03dd5_84134108')) {function content_4ff342c2f03dd5_84134108($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_options')) include 'C:\\AppServ\\smarty\\libs\\plugins\\function.html_options.php';
?>
	<script type="text/javascript">		    
    $(document).ready(function(){
		$("select#subcategoria").attr("disabled","disabled");    
    		$("select#categoria").change(function(){
				$("select#subcategoria").attr("disabled","disabled");
				$("select#subcategoria").html("<option>Cargando...</option>");
				var id = $("select#categoria option:selected").attr('value');	 
					$.post("?controller=subcategoria&action=combo", {categoria:id}, function(data){
						if (data=="")
							$("select#subcategoria").html("<option value=0>Sin subcategorias...</option>");
						else{
							$("select#subcategoria").removeAttr("disabled");
							$("select#subcategoria").html(data);
						}
					});
	    	});
	});		
	</script>	

<div class="section">
<div class="title">
  <h1>&#8226; CREATE Proyecto &#8226;</h1>
    <h2><?php echo $_smarty_tpl->getSubTemplate ('Main/breadcrumb.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</h2>
</div>
<form action="?controller=<?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
&action=create" method="post" enctype="multipart/form-data" name="form1" id="form1">
<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
" />
<input type="hidden" name="do_submit" value="1" />
<fieldset id="dateUserSolo">
<legend>Project Info</legend>
  <table class="datos">
    <tr>
      <td><label for="nombre">Nombre (*): </label></td>
      <td><input type="text" name="nombre" id="nombre" value="<?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
" /></td>
    </tr>    
    <tr>
        <td><label for="descripcion">Descripcion (*): </label></td>
        <td><input type="text" name="descripcion" id="descripcion" value="<?php echo $_smarty_tpl->tpl_vars['descripcion']->value;?>
" /></td>
    </tr>    
    <tr>
      <td>Ciudad (*):</td>
      <td><select name="ciudad" id="ciudad">
	    	<option value="NULL">Seleccionar...</option>
	      	<?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['ciudad']->value,'selected'=>$_smarty_tpl->tpl_vars['ciudad_id']->value),$_smarty_tpl);?>

      	</select>
      </td>
    </tr>        
    <tr>
      <td></td>
      <td align="right"><?php echo $_smarty_tpl->getSubTemplate ('Main/create_buttons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</td>
    </tr>
   
  </table>
 
</fieldset>

</form><?php }} ?>