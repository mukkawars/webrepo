<?php


try{
    $con=new PDO("mysql:host=localhost;dbname=schooldb","root","");
 
    
}
catch(PDOException $ex){
    echo $ex->getMessage();
}


?>