<?php
include "db.php";
$sql="select * from school";
$stmt=$con->prepare($sql);
$stmt->execute();
$result=$stmt->fetchAll(PDO::FETCH_OBJ);
?>
<center>
   <table border>
    <tr>
    <td>ID</td>
    <td>username</td>
    <td>password</td>
    <td>Image</td>
    <td>Action</td>
    <td>Update</td>
    <td>update</td>

    </tr>

    <?php
foreach($result as $r){
   ?>
    <tr>
    <td><?= $r->Name;?> </td>
    <td><?= $r->Address;?> </td>
    <td><?= $r->email;?> </td>
    <td><?= $r->number;?> </td>
    <td><?= $r->Gender;?> </td>
   <td> <a href="delete.php?id=<?=$r->number  ?>">Delete</a></td>
   <td> <a href="update1.php?id=<?=$r->number  ?>">Update</a></td>
    </tr>

  <?php 

}

?>
    </table></center>