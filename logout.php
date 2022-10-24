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
</head>
<body>
    <?php
    if (isset($_POST['yes'])) {
        session_destroy();
        header("Location: login.php");
    }
    ?>
    <h1>Are you sure you want to log out?</h1>
    <form action="logout.php" method="post">
        <input type="submit" value="Yes" name="yes">
    </form>
    <a href="index.php">
        <input type="submit" value="No">
    </a>
</body>
</html>