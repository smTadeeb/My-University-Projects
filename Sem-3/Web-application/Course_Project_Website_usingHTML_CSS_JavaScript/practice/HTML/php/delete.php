<?php

require_once('conn.php');
global $con;

$id = $_POST['id'];

if(empty($id))
{
die();
}
//$query = $con->prepare("DELETE FROM userinfo where id=?");

// sql to delete a record
$sql = "DELETE FROM userinfo WHERE id=".$id;

if (mysqli_query($con, $sql)) {
  echo "Record deleted successfully";
} else {
  echo "Error deleting record: " . mysqli_error($con);
}

mysqli_close($con);