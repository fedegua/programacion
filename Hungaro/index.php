<?php
/*
Template Name: Index Page
*/
?>
<?php get_header(); ?>
<div style="background-color:#EDEDED;">
<div id="body">
	<div id="body-pad" class="append-clear">
		<div id="content" class="content-group content-index">
			<div id="content-pad"> 
				
				<div id="featured" class="box box-featured">
					<div class="title">
						<h2>Featured Posts</h2>		
					</div>
					<div class="interior">
						<?php do_action('insert_flex_slider'); ?>
					</div>
				</div>
				
			</div>
		</div>
		<?php get_sidebar(); ?>
	</div>
</div>
</div>
	<div id="body">
		<div id="body-pad" class="append-clear" style="width:960px; margin:0 auto;">
			<div id="content" class="content-group content-index">
				<div id="content-pad"> 
					<div class="indexNot">			
						<div class="content-title">
							<h2>Novedades</h2>
						<?php 
						if (!is_singular()) :
							Padd_PageNavigation::render(); 
						endif;
						?>
						</div>
						<?php get_template_part('loop','index'); ?>
					</div>
				</div>
				<?php 
					//if (!is_singular()) :
						//Padd_PageNavigation::render(); 
					//endif;
				?>
			</div>
		</div>
	</div>




<?php get_footer(); ?>