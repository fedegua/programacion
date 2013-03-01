<?php /* Smarty version Smarty-3.1.8, created on 2012-07-04 19:48:08
         compiled from "E:\AppServ/www/Obli_AI/app/templates\Login\login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:327594ff4c8284327f7-24356011%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '81613d55e6f382098b80c1586b371d2a8eede36a' => 
    array (
      0 => 'E:\\AppServ/www/Obli_AI/app/templates\\Login\\login.tpl',
      1 => 1340731314,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '327594ff4c8284327f7-24356011',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'status' => 0,
    'msg' => 0,
    'id' => 0,
    'usuario' => 0,
    'password' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_4ff4c828464a50_22436949',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ff4c828464a50_22436949')) {function content_4ff4c828464a50_22436949($_smarty_tpl) {?><div class="section">
<div class="title">
  <h1>&#8226; LOGIN USUARIO &#8226;</h1>
    <h2>&nbsp;</h2>
</div>
<?php if ($_smarty_tpl->tpl_vars['status']->value){?>
<div id="messages" class="appMsg_<?php echo $_smarty_tpl->tpl_vars['status']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['msg']->value;?>
</div>
<?php }?>
<form action="?controller=login&action=signin" method="post" name="form1" id="form1">
  <input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
" />
<input type="hidden" name="do_submit" value="1" />
<fieldset id="dateUserSolo">
<legend>User Info	
  </legend><table align="center" class="datos">
    <tr>
      <td ><label for="usr">User (*):</label></td>
      <td>
        <input type="text" name="usr" id="usr" value="<?php echo $_smarty_tpl->tpl_vars['usuario']->value;?>
" />
      </td>
    </tr>    
    <tr>
      <td><label for="pwd">Password(*): </label></td>
      <td><input type="password" name="pwd" id="pwd" value="<?php echo $_smarty_tpl->tpl_vars['password']->value;?>
" /></td>
    </tr>
    
    <tr>
      <td></td>
      <td align="right"><?php echo $_smarty_tpl->getSubTemplate ('Main/login_buttons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</td>
    </tr>
   
  </table>
 
</fieldset>

</form><?php }} ?>