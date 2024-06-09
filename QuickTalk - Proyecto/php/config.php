<?php
$hostname = "localhost";
$username = "id22026208_user";
$password = "Quicktalk2000.";
$dbname = "id22026208_chat";

$conn = mysqli_connect($hostname, $username, $password, $dbname);
if (!$conn) {
  echo "Database connection error" . mysqli_connect_error();
}
