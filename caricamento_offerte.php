<?php
    require "database.php";
    session_start();

    if(!isset($_SESSION["username"])){
        header("Location: Homework_1.php");
        exit;
    }
    
    $conn=mysqli_connect($dbconfig["db_host"],$dbconfig["db_user"],$dbconfig["db_password"],$dbconfig["db_name"]) or die(mysqli_error($conn));
    $nome=$_GET["piscina"];
    $offerta_tot=array();
    $query="SELECT o.corso, o.orario, o.piscina, c.nome_c, c.istruttore, c.immagine
            FROM (offerta o join corso c on o.corso=c.codice_c and o.orario=c.orario) join piscina p on o.piscina=p.codice_p
            WHERE o.piscina=\"$nome\"";

    $res=mysqli_query($conn,$query);
    while($dati=mysqli_fetch_assoc($res)){
        $offerta_tot[]=array("Piscina" => $dati["piscina"], "Corso" => $dati["nome_c"], "Orario" => $dati["orario"],
                             "Istruttore" => $dati["istruttore"], "Immagine" => $dati["immagine"]);
    }

    mysqli_free_result($res);
    mysqli_close($conn);

    echo json_encode($offerta_tot);
?>