<?php

include "db.php";


if(isset($_POST['submit']))
{
// Posted Values
extract($_POST);
$fname=$_POST['h_name'];
$lname=$_POST['h_addr'];
$emailid=$_POST['h_mail'];
$contactno=$_POST['h_num'];
$address=$_POST['h_datename'];

$gender=$_POST["rdogender"];

if($gender=="m")
	$gender1="Male";
elseif($gender=="f")
	$gender1="Female";
else
	$gender1="Transgender";

   
// Query for Insertion
$sql="INSERT INTO school(Name,Address,email,number,Date,Gender) VALUES(:fn,:ln,:eml,:cno,:adrss,:gd)";
//Prepare Query for Execution
$query = $con->prepare($sql);
// Bind the parameters
$query->bindParam(':fn',$fname);
$query->bindParam(':ln',$lname);
$query->bindParam(':eml',$emailid);
$query->bindParam(':cno',$contactno);
$query->bindParam(':adrss',$address);
$query->bindParam(':gd',$gender1);

$query->execute();
$lastInsertId = $con->lastInsertId();
if(!$lastInsertId)
{
// Message for successfull insertion
echo "<script>alert('Record inserted successfully');</script>";
echo "<script>window.location.href='select.php'</script>";
}
else
{
// Message for unsuccessfull insertion
echo "<script>alert('Something went wrong. Please try again');</script>";
echo "<script>window.location.href='select.php'</script>";
}
}


?>