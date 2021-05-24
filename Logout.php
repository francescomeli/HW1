<?php
include "database.php";
session_start();

session_destroy();

header("Location: Homework_1.php");
exit;
?>