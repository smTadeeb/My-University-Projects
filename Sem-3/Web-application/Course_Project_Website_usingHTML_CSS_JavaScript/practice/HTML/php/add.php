<?php
require_once('conn.php');
global $con;

$name = $_POST['name'];
$username = $_POST['username'];
$password = $_POST['password'];

if(!empty($name) && !empty($username) && !empty($password))
{
$query ="INSERT into userinfo (name, username, password) VALUES ('$name','$username','$password')";

if (mysqli_query($con, $query)) {
  echo "New record created successfully";
} else {
  echo "Error: " . $query . "<br>" . mysqli_error($con);
}
}