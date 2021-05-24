<?php
    require "database.php";
    session_start();

    if(!isset($_SESSION["username"])){
        header("Location: Homework_1.php");
        exit;
    }
    
    $conn=mysqli_connect($dbconfig["db_host"],$dbconfig["db_user"],$dbconfig["db_password"],$dbconfig["db_name"]) or die(mysqli_error($conn));
    $nome=$_SESSION["username"];
    $identificativo=mysqli_real_escape_string($conn,$_GET["piscina"]);

    $id="SELECT codice_p 
         FROM PISCINA
         WHERE nome_p=\"$identificativo\"";

    $res=mysqli_query($conn,$id);
    $row=$res->fetch_row();
    $variabile = $row[0];

    echo $variabile;


    $query="DELETE FROM valutazione_p WHERE utente = \"$nome\" AND piscina = \"$variabile\"";


    mysqli_query($conn,$query);

    mysqli_close($conn);
?>