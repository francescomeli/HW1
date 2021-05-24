<?php
require "database.php";

if(!empty($_POST["username"]) && !empty($_POST["email"]) && !empty($_POST["nome"]) && !empty($_POST["cognome"]) && !empty($_POST["data_nascita"]) && !empty($_POST["passw"])){
    $conn=mysqli_connect($dbconfig["db_host"],$dbconfig["db_user"],$dbconfig["db_password"],$dbconfig["db_name"]) or die(mysqli_error($conn));

    $username=mysqli_real_escape_string($conn,$_POST["username"]);
    $query="SELECT username FROM utente WHERE username=\"$username\"";
    $res=mysqli_query($conn,$query);
    if(mysqli_num_rows($res)>0){
        $controllo=true;
    }

    $email=mysqli_real_escape_string($conn,$_POST["email"]);
    $query="SELECT email FROM utente WHERE email=\"$email\"";
    $res=mysqli_query($conn,$query);
    if(mysqli_num_rows($res)>0){
        $controllo=true;
    }

    if(strlen($_POST["passw"])<6){
        $controllo=true;
    }

    if(!isset($controllo)){
        $nome=mysqli_real_escape_string($conn,$_POST["nome"]);
        $cognome=mysqli_real_escape_string($conn,$_POST["cognome"]);
        $data=mysqli_real_escape_string($conn,$_POST["data_nascita"]);
        //$data=date("Y-m-d");
        $password=mysqli_real_escape_string($conn,$_POST["passw"]);
        $password_hash= password_hash("$password", PASSWORD_DEFAULT);   //così non lo rendo visibile in chiaro

        $query="INSERT INTO utente(username,email,nome,cognome,data_nascita,passw) VALUES (\"$username\",\"$email\",\"$nome\",\"$cognome\",\"$data\",\"$password_hash\")";
        $res=mysqli_query($conn,$query);
        if($res){
            mysqli_close($conn);
            header("Location: Login.php");
            exit();
        }
    }
}
?>

<!DOCTYPE html>
<html>
    <head>
        <title>ISCRIZIONE</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="iscrizione.js" defer></script>
        <link rel="stylesheet" href="login.css">
    </head>

    <body>
        <form method="post" action="iscrizione.php">
            <h1>Registrazione</h1>
            
            <input type="text" id="username" placeholder="Username" name="username" maxlenght="255" required>  
            <p id="check_username" class='errore hidden'> Username già in uso, scegline un altro. </p>
            
            <input type="text" id="email" placeholder="Email" name="email" maxlenght="255" required>
            <p id="check_email" class='errore hidden'> Email già iscritta, effettua il login. </p>
            
            <input type="text" id="nome" placeholder="Nome" name="nome" maxlenght="255" required>
            <input type="text" id="cognome" placeholder="Cognome" name="cognome" maxlenght="255" required>
            <br>
            <h5>Data di nascita: </h5>
            <input type="date" id="data_nascita" name="data_nascita" required>  
            <input type="password" id="passw" placeholder="Password" name="passw" maxlenght="255" required>

            <p id="check_password" class='errore hidden'> Password troppo breve, inserire minimo 6 caratteri. </p>

            <br>
            <?php
                if(isset($controllo)){
                    echo "<p class='errore'> Errore durante la compilazione dei campi, riprova.</p>";
                }
            ?>
            <button type="submit" id="submit"> Conferma </button>
        </form>

        <footer>
            <address>Contatti: cicciomeli8@hotmail.com</address>
            <p>Francesco Meli O46002172</p>
        </footer>
    </body>
</html>