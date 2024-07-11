<?php

// database connection code

$con = mysqli_connect('127.0.0.1:3306', 'root', '','hospital');

// get the post records
$FName = $_POST['fname'];
$LName = $_POST['lname'];
$Number = $_POST['number'];
$Email = $_POST['email'];
$PWord = $_POST['pword'];

// database insert SQL code
$sql = "INSERT INTO `account` (`fname`, `lname`, `phone`, `Email`, `password`) 
		VALUES ('$FName', '$LName', '$Number', '$Email', '$PWord')";

if(mysqli_query($con, $sql)){  

 echo "Record inserted successfully";  

}else{  

echo "Could not insert record: ". mysqli_error($con);  

}  

mysqli_close($con);


?>