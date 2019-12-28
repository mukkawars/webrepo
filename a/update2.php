<?php

include 'db.php';

if(isset($_REQUEST['id']))
{

$userid=intval($_GET['id']);

$fname=$_POST['firstname'];
$lname=$_POST['lastname'];
$emailid=$_POST['emailid'];
$contactno=$_POST['contactno'];
$address=$_POST['address'];
$gender=$_POST['gender'];

$sql="update school set Name=:fn,Address=:ln,email=:eml,number=:cno,Date=:adrss,Gender=:gen where number=:uid";

$query = $con->prepare($sql);

$query->bindParam(':fn',$fname,PDO::PARAM_STR);
$query->bindParam(':ln',$lname,PDO::PARAM_STR);
$query->bindParam(':eml',$emailid,PDO::PARAM_STR);
$query->bindParam(':cno',$contactno,PDO::PARAM_STR);
$query->bindParam(':adrss',$address,PDO::PARAM_STR);
$query->bindParam(':gen',$gender,PDO::PARAM_STR);
$query->bindParam(':uid',$userid,PDO::PARAM_STR);

$query->execute();

echo "<script>alert('Record Updated successfully');</script>";

echo "<script>window.location.href='select.php'</script>";
}
?>