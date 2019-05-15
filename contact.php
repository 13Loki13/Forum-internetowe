<?php
session_start();
include ( 'engine/config.php' );
include ( CLASS_PATH . 'Template.class.php' );





$tpl = new Template('default');


try {
	$tpl->init();
	$tpl->loadTemplate('header.tpl');

	$tpl->loadTemplate("contact.tpl");

	$tpl->loadTemplate('footer.tpl');
	$tpl->showTemplate();
} catch( Exception $e )
{
	echo "Error: " .  $e->getMessage();
	die();
}

?>
