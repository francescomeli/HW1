<?php
require "database.php";
session_start();
if(!isset($_SESSION["username"])){
    header("Location: Homework_1.php");
    exit;
}

$conn=mysqli_connect($dbconfig["db_host"],$dbconfig["db_user"],$dbconfig["db_password"],$dbconfig["db_name"]) or die(mysqli_error($conn));

$username=$_SESSION["username"];
$sport=mysqli_real_escape_string($conn,$_GET["nome"]);

$query="UPDATE utente SET sport = \"$sport\" WHERE username = \"$username\"";

mysqli_query($conn,$query);

mysqli_close($conn);
?>