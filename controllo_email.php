<?php
require "database.php";
if(isset($_GET["email"])){
    $conn=mysqli_connect($dbconfig["db_host"],$dbconfig["db_user"],$dbconfig["db_password"],$dbconfig["db_name"]) or die(mysqli_error($conn));

    $mail=mysqli_real_escape_string($conn,$_GET["email"]);
    $query="SELECT email from utente WHERE email=\"$mail\"";
    $res=mysqli_query($conn,$query);
    if(mysqli_num_rows($res)>0){
        echo 1;
    }
    else{
        echo 0;
    }
}

mysqli_close($conn);
?>