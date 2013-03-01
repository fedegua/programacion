<?php
/*
Template Name: Pagina salones
*/
?>
<?php get_header('sal'); ?>
	<div id="slideSal">
		<?php 
			if (function_exists('slideshow')) { 
				slideshow('default', true); 
			} 
		?>
	</div>

<div id="contentPageSal" class="content-singular content-page">
	<div id="content-pad">
		<div id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

<?php 
	if (function_exists('bcn_display')) { 
		echo '<p class="breadcrumb">';
		bcn_display(); 
		echo '</p>';
	} 
?>		
<?php while (have_posts()) : ?>
	<?php the_post(); ?>

<div class="title">
	<h2><?php the_title(); ?></h2>	
</div>		
<div id="contentSal">
	<?php the_content(); ?>
</div>

<?php endwhile; ?>

		</div>
	</div>
</div>
<div id="linea"></div>
<script>
jQuery(document).ready(inicializo)
	function inicializo(){
		jQuery("#esp").click(verE);
		jQuery("#hung").click(verH);
		jQuery("#hungaro").hide();

	}
	function verH(){		

		if (jQuery("#hungaro").is(":hidden")){
			jQuery("#hungaro").show();
			jQuery("#espanol").hide();	
		}
	
	}
	function verE(){
		
		if (jQuery("#espanol").is(":hidden")){
			jQuery("#espanol").show();
			jQuery("#hungaro").hide();	
		}
	}

		
	
</script>

<?php //get_sidebar(); ?>

<div class="clear"></div>

<?php// get_footer(); ?>