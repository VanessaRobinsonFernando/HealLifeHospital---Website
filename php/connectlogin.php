<?php
// database connection code
// $con = mysqli_connect('localhost', 'database_user', 'database_password','database');

$con = mysqli_connect('127.0.0.1:3306', 'root', '','hospital');

$emailID = $_POST['email'];  
$password = $_POST['psw'];  
      
        //to prevent from mysqli injection  
        $emailID = stripcslashes($emailID);  
        $password = stripcslashes($password);  
        $emailID = mysqli_real_escape_string($con, $emailID);  
        $password = mysqli_real_escape_string($con, $password);  
      
        $sql = "select * from account where Email = '$emailID' and password = '$password'";  
        $result = mysqli_query($con, $sql);  
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        $count = mysqli_num_rows($result);  
          
        if($count == 1){  
            echo "<h1><center> Login successful </center></h1>";  
        }  
        else{  
            echo "<h1> Login failed. Invalid username or password.</h1>";  
        }     


?>