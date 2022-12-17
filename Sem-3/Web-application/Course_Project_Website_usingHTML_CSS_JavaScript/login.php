<?php

session_start();

if(isset($_SESSION['email'])){
    echo "<script>location.href='home.html'</script>";
}
else{
?>

<?php
    if (isset($_POST['login']) && !empty($_POST['email']) && !empty($_POST['password'])){
        
    include('config.php');
        
        $email=$_POST['email'];
        $password=md5($_POST['password']);
    
        $sql=mysqli_fetch_assoc(mysqli_query($conn,"SELECT * FROM credentials WHERE email='".$email."' and password='".$password."'"));
        
if($_POST['email']==$sql['email'] && md5($_POST['password'])==$sql['password']){
            
        echo "<script>location.href='home.html'</script>";
    }
    else{
        echo "<script>alert('incorrect email or password')</script>";
        echo "<script>location.href='login.html'</script>";
    } 
}
?>

<?php } ?>