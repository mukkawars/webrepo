<?php

include 'db.php';

if(isset($_REQUEST['id']))
{
//Get row id
$uid=intval($_GET['id']);
//Qyery for deletion
$sql = "delete from school WHERE  number=:id";
// Prepare query for execution
$query = $con->prepare($sql);
// bind the parameters
$query-> bindParam(':id',$uid);
// Query Execution
$query -> execute();
// Mesage after updation
echo "<script>alert('Record Updated successfully');</script>";
// Code for redirection
echo "<script>window.location.href='select.php'</script>";
}
?>