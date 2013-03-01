<?php
/*
Template Name: Default Page
*/
?>
<?php get_header(); ?>
<div id="body">
	<div id="body-pad" class="append-clear">
<div id="contentPage" class="content-singular content-page">
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

<div id="idioma"><span id="id">Idioma:</span><span id="esp">Espa&ntilde;ol</span><span id="hung">Hungaro</span> </div>
<div class="title">
	<h2><?php the_title(); ?></h2>	
</div>		
<div class="content">
	<?php the_content(); ?>
</div>

<?php endwhile; ?>

		</div>
	</div>
</div>
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

<?php get_footer(); ?>