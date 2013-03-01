<div class="section">
<div class="title">
  <h1>&#8226; LOGIN USUARIO &#8226;</h1>
    <h2>&nbsp;</h2>
</div>
{if $status}
<div id="messages" class="appMsg_{$status}">{$msg}</div>
{/if}
<form action="?controller=login&action=signin" method="post" name="form1" id="form1">
  <input type="hidden" name="id" value="{$id}" />
<input type="hidden" name="do_submit" value="1" />
<fieldset id="dateUserSolo">
<legend>User Info	
  </legend><table align="center" class="datos">
    <tr>
      <td ><label for="usr">User (*):</label></td>
      <td>
        <input type="text" name="usr" id="usr" value="{$usuario}" />
      </td>
    </tr>    
    <tr>
      <td><label for="pwd">Password(*): </label></td>
      <td><input type="password" name="pwd" id="pwd" value="{$password}" /></td>
    </tr>
    
    <tr>
      <td></td>
      <td align="right">{include file ='Main/login_buttons.tpl'}</td>
    </tr>
   
  </table>
 
</fieldset>

</form>