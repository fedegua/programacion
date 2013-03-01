<?php require 'includes/required/template-top.php'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head profile="http://gmpg.org/xfn/11">
<meta http-equiv="Content-Type" content="<?php bloginfo('html_type'); ?>; charset=<?php bloginfo('charset'); ?>" />
<title><?php wp_title('&laquo;', true, 'right'); ?> <?php bloginfo('name'); ?></title>
<link rel="stylesheet" href="<?php echo get_stylesheet_uri(); ?>" type="text/css" media="screen" />
<?php

$icon = get_option(PADD_NAME_SPACE . '_favicon_url','');
if (!empty($icon)) {
	echo '<link rel="shortcut icon" href="' . $icon . '" />' . "\n";
	echo '<link rel="icon" href="' . $icon . '" />' . "\n";
}
?>
<?php wp_head(); ?>
<?php
$tracker = get_option(PADD_NAME_SPACE . '_tracker_head','');
if (!empty($tracker)) {
	echo stripslashes($tracker);
}
?>
</head>

<body <?php body_class(); ?>>
<?php
$tracker = get_option(PADD_NAME_SPACE . '_tracker_top','');
if (!empty($tracker)) {
	echo stripslashes($tracker);
}
?>
<div id="containerSal">
	<div id="containerSal">	

	<div id="headerSal">
			<div id="menubarSal">
				<div id="menubar-pad">
					<div class="box box-mainmenu">
						<h3>Main Menu</h3>
						<div class="interior">
							<?php 
								wp_nav_menu(array(
									'theme_location' => 'second',
									'container' => null,
									'link_before' => '<span class="l"><span class="r"><span class="c">',
									'link_after' => '</span></span></span>'
								));
							?>
						</div>
					</div>
				</div>
			</div>
			
			<div class="mastheadSal">
				<?php $tag = (is_home()) ? 'h1' : 'p'; ?>
				<<?php echo $tag; ?> class="title"><a href="<?php echo get_option('home'); ?>"><?php bloginfo('name'); ?></a></<?php echo $tag; ?>>
				<p class="description"><?php bloginfo('description'); ?></p>
			</div>					

	</div>
	


	<a name="skip-to-content"></a>
	
	<div id="bodySal">
		<div id="body-pad" class="append-clear">