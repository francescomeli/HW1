<?php
require "database.php";
session_start();
if(!isset($_SESSION["username"])){
    header("Location: Homework_1.php");
    exit;
}

$conn=mysqli_connect($dbconfig["db_host"],$dbconfig["db_user"],$dbconfig["db_password"],$dbconfig["db_name"]) or die(mysqli_error($conn));
$carica=array();

$username=$_SESSION["username"];
$query="SELECT * FROM utente WHERE username = \"$username\"";

$res=mysqli_query($conn,$query);
    while($dati=mysqli_fetch_assoc($res)){
        $carica[]=array("Username" => $dati["username"], "Email" => $dati["email"],"Nome" => $dati["nome"],
        "Cognome" => $dati["cognome"], "Playlist" => $dati["playlist"], "Sport" => $dati["sport"]);
    }

mysqli_free_result($res);
mysqli_close($conn);
echo json_encode($carica);
?>