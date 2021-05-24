<?php
session_start();
require "database.php";

$client_id="15355e34f1ec424e93e84a102f5a39dc";
$client_secret="201267ce8ee3437cb6ccac749de415f7";

$curl=curl_init();
curl_setopt($curl,CURLOPT_URL,"https://accounts.spotify.com/api/token");
curl_setopt($curl,CURLOPT_RETURNTRANSFER,1);
curl_setopt($curl,CURLOPT_POST,1);
curl_setopt($curl,CURLOPT_POSTFIELDS,"grant_type=client_credentials");
curl_setopt($curl,CURLOPT_HTTPHEADER,array("Authorization: Basic ".base64_encode($client_id.":".$client_secret)));
$token=json_decode(curl_exec($curl),true);
curl_close($curl);

$ricerca=urlencode($_GET["cerca"]);
$url="https://api.spotify.com/v1/search?type=playlist&q=".$ricerca;
$curl=curl_init();
curl_setopt($curl,CURLOPT_URL,$url);
curl_setopt($curl,CURLOPT_RETURNTRANSFER,1);

curl_setopt($curl,CURLOPT_HTTPHEADER,array("Authorization: Bearer ".$token["access_token"]));
$res=curl_exec($curl);
curl_close($curl);

echo $res;
?>