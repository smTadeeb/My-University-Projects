<?php

include('config.php');

if(isset($_POST['signup'])){
    
    $email=$_POST['email'];
    $username=$_POST['username'];
    $password=$_POST['password'];
    $cpassword=$_POST['cpassword'];
    $name=$_POST['name'];
    $country=$_POST['country'];
    $age=$_POST['age'];
    $gender=$_POST['r1'];
    
    if($password!=$cpassword){
        
        echo "<script>alert('Password did not match')</script>";
        echo "<script>location.href='signup.html'</script>";
    }
    
    else{
        
        $encrypted=md5($password);
        
        $sql=mysqli_query($conn,"INSERT INTO signup(email, username, password, name, country, age, gender) VALUES ('$email','$username','$encrypted','$name','$country','$age','$gender')");
        
        $sql1=mysqli_query($conn,"INSERT INTO credentials(email, password) VALUES ('$email','$encrypted')");
        
        if($sql && $sql1){
        
            echo "<script>alert('Signed up successfully')</script>";
            echo "<script>location.href='login.html'</script>";
    }
        else{
            
            echo "<script>alert('Unable to register, username or email already exist')</script>";
            echo "<script>location.href='signup.html'</script>";
        }
}
}

?>