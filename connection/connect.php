<?php

//main connection file for both admin & front end
$servername = "localhost"; //server
$username = ""; //username
$password = ""; //password
$dbname = "GroceryShopping";  //database

// Create connection
$db = mysqli_connect("localhost", "root","", $dbname); // connecting 
// Check connection
if (!$db) {       //checking connection to DB	
    die("Connection failed: " . mysqli_connect_error());
}

?> 