<?php
    require "database.php";
    $conn=mysqli_connect($dbconfig["db_host"],$dbconfig["db_user"],$dbconfig["db_password"],$dbconfig["db_name"]) or die(mysqli_error($conn));

    $carica=array();
    $query="SELECT * FROM CORSO ORDER BY orario";
    $res=mysqli_query($conn,$query);
    while($dati=mysqli_fetch_assoc($res)){
        $carica[]=array("Codice_del_corso" => $dati["codice_c"], "Nome_del_corso" => $dati["nome_c"], "Orario"=> $dati["orario"],
        "Costo" => $dati["costo"], "Istruttore" => $dati["istruttore"], "Immagine" => $dati["immagine"], "Descrizione" => $dati["descrizione"]);
    }

    mysqli_free_result($res);
    mysqli_close($conn);
    echo json_encode($carica);
?>