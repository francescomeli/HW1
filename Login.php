<?php
session_start();
require "database.php";
if(isset($_SESSION["username"])){
    header("Location: Homework_1.php");
    exit;
}

if(isset($_POST["username"]) && isset($_POST["passw"])){
    $conn=mysqli_connect($dbconfig["db_host"],$dbconfig["db_user"],$dbconfig["db_password"],$dbconfig["db_name"]) or die(mysqli_error($conn));

    $username=mysqli_real_escape_string($conn,$_POST["username"]);
    $password=mysqli_real_escape_string($conn,$_POST["passw"]);

    $query="SELECT username,passw FROM utente WHERE username=\"$username\"";
    $res=mysqli_query($conn,$query);

    if(mysqli_num_rows($res)>0){
        $row=mysqli_fetch_assoc($res);
        if (password_verify($_POST["passw"], $row["passw"])) {
            $_SESSION["username"]=$_POST["username"];

            header("Location: Homework_1.php");
            exit;
        }else{
            $errore=true;
        }
    }
    else{
        $errore=true;
    }
}
?>

<!DOCTYPE html>
<html>
    <head>
        <title>ACCEDI/REGISTRATI</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="login.css"> 
    </head>

    <body>
        <form method="post" action="Login.php">
            <h1>Login</h1>
            <br/>
            <br/>
            <br/>
            <br/>
            <input type="text" id="username" placeholder="Username" name="username" maxlenght="255" required>
            <input type="password" id="passw" placeholder="Password" name="passw" maxlenght="255" required>
            <?php
                if(isset($errore)){
                    echo "<p class='errore'> Il nome utente e/o la password che sono state inserite sono errate. </p>";
                }
            ?>
            <br/>
            <button type="submit" id="submit"> Accedi </button>
        </form>

        <footer>
            <address>Contatti: cicciomeli8@hotmail.com</address>
            <p>Francesco Meli O46002172</p>
        </footer>
    </body>
</html>