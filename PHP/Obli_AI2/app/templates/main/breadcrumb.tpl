{if is_array($breadcrumb)}
 <h2>Usted est&aacute; en 
 {foreach from=$breadcrumb key=k item=href}
 	{if !isset($href) || empty($href)}
		{$k}
    {else}
     	<a href="{$href}"> {$k}</a> > 
    {/if}
 {/foreach}   
 </h2>
{/if} 