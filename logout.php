<?php
session_start();
require_once "connect.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beheerderspaneel | Uitloggen</title>
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="https://in02.hostcontrol.com/resources/e63479f5bc869c/288e74fb90.PNG" type="image/png" sizes="16x16">

</head>
<body>
    <?php
    session_destroy();
    header("Location: login.php");
    ?>

</body>
</html>