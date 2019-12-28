<?php
include 'db.php';


// Get the userid
if(isset($_GET['id']))
{
   
$userid=intval($_GET['id']);
$sql = "SELECT * from school where number=:uid";
//Prepare the query:
$query = $con->prepare($sql);
//Bind the parameters
$query->bindParam(':uid',$userid,PDO::PARAM_STR);
//Execute the query:
$query->execute();
//Assign the data which you pulled from the database (in the preceding step) to a variable.
$results=$query->fetchAll(PDO::FETCH_OBJ);

// For serial number initialization
$cnt=1;
if($query->rowCount() > 0)
{
//In case that the query returned at least one record, we can echo the records within a foreach loop:
foreach($results as $result)
{
?>
<form action="update2.php" name="insertrecord" method="post">

<div class="row">
<div class="col-md-4"><b>First Name</b>
<input type="text" name="firstname" value="<?php echo htmlentities( $result->Name);?>" class="form-control" required>
</div>

<div class="col-md-4"><b>Last Name</b>
<input type="text" name="lastname" value="<?=$result->Address;?>" class="form-control" required>
</div>
</div>
<div class="row">
<div class="col-md-4"><b>Email id</b>
<input type="email" name="emailid" value="<?=$result->email;?>" class="form-control" required>
</div>
<div class="col-md-4"><b>Contactno</b>
<input type="text" name="contactno" value="<?= $result->number?>" class="form-control" maxlength="10" required>
</div>
</div>
<div class="row">
<div class="col-md-8"><b>Address</b>
<input class="form-control" name="address" required value="<?=$result->Date;?>">
</div>
</div>
<div class="row">
<div class="col-md-8"><b>Gender</b>
<input class="form-control" name="gender" required value="<?=$result->Gender;?>">
</div>
</div>
<?php }} ?>
<div class="row" style="margin-top:1%">
<div class="col-md-8">

 <td> <a href="update2.php?id=<?=$result->number?>">update </a></td>

<td><input type="submit" name="id" value="Update"></td>
</div>
</div>

</form>
<?php }?>
