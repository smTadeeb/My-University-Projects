<?php
global $con;
$con = mysqli_connect('localhost','root','','au_session');
if(!$con)
{
 echo 'unable to connect with db';
 die();
}