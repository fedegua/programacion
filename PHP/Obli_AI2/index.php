<?php
session_start();
require_once 'config.php';
//ini_set('display_errors', 0);
//Instancio FrontController
require_once (LIBRARY.'FrontController.class.php');
require_once (LIBRARY.'AppController.class.php');
require_once (LIBRARY.'DataAccess.class.php');
require_once (LIBRARY.'DataAccessResult.class.php');
require_once (LIBRARY.'Query.class.php');
require_once (LIBRARY.'SimpleImage.class.php');
require_once (LIBRARY.'Security.class.php');
require_once (LIBRARY.'functions.php');
$F = new FrontController;
//Invoco metodo dispatch que es el que crea
//el controlador
require_once (SMARTY);

$F->dispatch();



