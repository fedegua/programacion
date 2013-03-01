<div id="cont_menu">
  {include file ='Main/search_box.tpl'}
<div id="menu_local">

			<ul id="det">
				<li id="print"> <a href="#"> Print</a></li>
           		<li id="delete"> <a href="javascript:send('?controller={$controller}&action=delete','form1')" title="Delete {$controller}"> Delete</a></li>
                
				<li id="list"> <a href="?controller={$controller}&action=crud" title="Retrieve {$controller}">Retrieve</a></li>
                <li id="new"><a href="?controller={$controller}&action=create" title="Create {$controller}">Create</a></li>
			</ul>
			
		</div>
        
</div>

