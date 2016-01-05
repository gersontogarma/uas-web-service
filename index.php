<?php
	require 'Slim/Slim.php';

	\Slim\Slim::registerAutoloader();



	$app = new \Slim\Slim();

//hit parent URL
$app->get("/", function() {
    echo "<h1>Tugas UAS WEB SERVICE</h1>";
    echo "<h1>Gerson Togarma-0842058</h1>";
});
	require 'Apis/api.php';


	$app->run();

	function getConnection() {
		$dbhost="127.0.0.1";
		$dbuser="root";
		$dbpass="";
		$dbname="db_uas_webservice";
		$dbh = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);
		$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		return $dbh;
	}

	function auth(\Slim\Route $route) {
		$app = \Slim\Slim::getInstance();
		$uid = $app -> getEncryptedCookie('uid');
		$key = $app -> getEncryptedCookie('key');
		if (validateUserKey($uid, $key) === false) {
			$app -> halt(401);
		}
	}

	function validateUserKey($uid, $key) {
		//// insert your (hopefully more complex) validation routine here
		return true;
	}
