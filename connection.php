<?php
session_start();
	$dbhost = "localhost";
	$dbuser = "sdenney";
	$dbpass = "kzov52Girm";
	$dbname = "inform_a_fish";
	$con = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
	if(!$con)
	{
		die("failed to connect!");
	}

