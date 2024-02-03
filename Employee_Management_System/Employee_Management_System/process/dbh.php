<?php

$servername = "127.0.0.1";
$dBUsername = "root";
$dbPassword = "";
$dBName = "ems";

$conn = mysqli_connect($servername, $dBUsername, $dbPassword, $dBName);

if(!$conn){
	echo "Databese Connection Failed";
}

?>