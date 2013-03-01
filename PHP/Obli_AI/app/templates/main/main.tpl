{if $login}
	{assign var="header" value="header_log.tpl"}
{else}
	{assign var="header" value="header.tpl"}	
{/if} 
{assign var="main" value="Main/$header"}
{include file	= $main}
{include file	= $body}
{include file	= 'Main/footer.tpl'}