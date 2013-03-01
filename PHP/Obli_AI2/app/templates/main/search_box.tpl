{literal}
	<script type="text/javascript">
		// Datepicker
		$(document).ready(function(){
			$('#start_period').datepicker({
				inline: true,
				dateFormat: 'yy-mm-dd'
			});
			$('#end_period').datepicker({
				inline: true,
				dateFormat: 'yy-mm-dd'
			});
		});
	</script>	
{/literal}
<div id="filterResults">
<form action="?controller={$controller}&action=crud" method="post">
<!-- Datepicker -->
    Period:
    <input name="start_period" id="start_period" type="text" value="{$start_period}" />
    to
    <input name="end_period" id="end_period" type="text" value="{$end_period}" />
Search:

<input type="text" name="search" value="{$search}"  />
<label>
  <input type="submit" name="button" id="button" value="Search" />
</label>

</form>
</div>