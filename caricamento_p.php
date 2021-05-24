<?php
    require "database.php";
    $conn=mysqli_connect($dbconfig["db_host"],$dbconfig["db_user"],$dbconfig["db_password"],$dbconfig["db_name"]) or die(mysqli_error($conn));

    $piscina=array();
    $query="SELECT * FROM PISCINA";

    $res=mysqli_query($conn,$query);
    while($dati=mysqli_fetch_assoc($res)){
        $piscina[]=array("Codice_Piscina" => $dati["codice_p"], "Corsie_totali" => $dati["corsie_tot"], "Nome_piscina" => $dati["nome_p"],
                            "Immagine" => $dati["immagine"], "Descrizione" => $dati["descrizione"]);
    }

    mysqli_free_result($res);
    mysqli_close($conn);

    echo json_encode($piscina);
?>