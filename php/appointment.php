<?php

session_start();


$con = mysqli_connect('127.0.0.1:3306', 'root', '','hospital');


$random = (time()+ rand(1,1000));
$Email = $_POST['Email'];
$phone = $_POST['phone'];
$phone2 = $_POST['phone2'];
$location = $_POST['location'];
$speciality = $_POST['speciality'];
$doctor = $_POST['doctor'];
$date = $_POST['date'];
$time = $_POST['time'];


// database insert SQL code
$sql = "INSERT INTO `appointment` (`aID`, `Email`, `Phone`, `Phone2`, `Branch`, `Speciality`,`Doctor`, `Preferred_Date`,`Preferred_Time`) VALUES ('$random','$Email', '$phone', '$phone2', '$location', '$speciality', '$doctor', '$date','$time')";

// insert in database 
// $rs = mysqli_query($con, $sql);


if(mysqli_query($con, $sql)){  

 echo "Record inserted successfully";  

}else{  

echo "Could not insert record: ". mysqli_error($con);  

}  




ini_set("SMTP","localhost");

ini_set("smtp_port",25);

ini_set("sendmail_from","turemitente@gmail.com");

 

$too = "xxxxx@yahoo.com" ;//pon tu correo para probar, your email

$subject = "TEST" ;

$message = "User message" ;

$user_email = "xxxxxxxxxxx@gmail.com" ; // valid POST email address

 

$headers = "From: $user_email " ;

$headers .= "Reply-To: $too " ;

$headers .= "Return-Path: $too " ;

$headers .= "X-Mailer: PHP/" . phpversion (). " " ;

$headers .= 'MIME-Version: 1.0' . " " ;

$headers .= 'Content-type: text/html; UTF-8' . " " ;

 

if( mail ( $too , $subject , $message , $headers )) echo 'SENT' ;



mysqli_close($con);
 
 ?>

