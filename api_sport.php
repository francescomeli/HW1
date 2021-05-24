<?php
session_start();
require "database.php";
if(!isset($_SESSION["username"])){
    header("Location: Homework_1.php");
    exit;
}   

$ricerca=urlencode($_GET["cerca"]);

$curl=curl_init();
curl_setopt($curl,CURLOPT_URL,"https://sports.api.decathlon.com/sports/".$ricerca);
curl_setopt($curl,CURLOPT_RETURNTRANSFER,1);

$res=curl_exec($curl);
curl_close($curl);
echo $res;
?>