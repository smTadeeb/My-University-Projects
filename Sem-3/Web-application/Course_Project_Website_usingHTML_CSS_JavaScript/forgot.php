<?php

include('config.php');

if(isset($_POST['reset'])){
    
    $username=$_POST['username'];
    $password=$_POST['password'];
    $cpassword=$_POST['cpassword'];
    $email=$_POST['email'];
    
    if($password!=$cpassword){
        
        echo "<script>alert('Password did not match')</script>";
        echo "<script>location.href='forgot.html'</script>";
    }
    else{
        
        $encrypted=md5($password);
        
        $sql=mysqli_query($conn,"UPDATE signup SET password='$encrypted' WHERE username='$username'");
        
        if($sql){
            
            echo "password reset successfully";  
            $sql1=mysqli_query($conn,"update credentials set password='$encrypted' where email='$email'");
        
        }
        else{
            echo "unable to reset";
        }
    }
}

?>


<?php

include('config.php');

if(isset($_POST['delete'])){
    
    $email=$_POST['email'];
    
    $sql2=mysqli_query($conn,"delete from credentials where email='$email'");
    $sql3=mysqli_query($conn,"delete from signup where email='$email'");
    
    if($sql2 && $sql3){
        echo "Account deleted successfully";
    }
    else{
        echo "unable to delete account";
    }
}
    
    ?>
    