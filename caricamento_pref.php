<?php
    require "database.php";
    session_start();

    if(!isset($_SESSION["username"])){
        header("Location: Homework_1.php");
        exit;
    }
    
    $conn=mysqli_connect($dbconfig["db_host"],$dbconfig["db_user"],$dbconfig["db_password"],$dbconfig["db_name"]) or die(mysqli_error($conn));
    $nome=$_SESSION["username"];
    $preferenza=array();
    $query="SELECT * 
            FROM (valutazione_p val join piscina p on val.piscina=p.codice_p) join utente u on val.utente=u.username 
            WHERE val.utente=\"$nome\"";

    $res=mysqli_query($conn,$query);
    while($dati=mysqli_fetch_assoc($res)){
        $preferenza[]=array("Utente" => $dati["username"], "Codice_Piscina" => $dati["codice_p"], "Nome_piscina" => $dati["nome_p"],
                            "Immagine" => $dati["immagine"], "Descrizione" => $dati["descrizione"]);
    }

    mysqli_free_result($res);
    mysqli_close($conn);

    echo json_encode($preferenza);
?>