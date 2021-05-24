<?php
require "database.php";
if(isset($_GET["username"])){
    $conn=mysqli_connect($dbconfig["db_host"],$dbconfig["db_user"],$dbconfig["db_password"],$dbconfig["db_name"]) or die(mysqli_error($conn));

    $nome=mysqli_real_escape_string($conn,$_GET["username"]);
    $query="SELECT username from utente WHERE username=\"$nome\"";
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