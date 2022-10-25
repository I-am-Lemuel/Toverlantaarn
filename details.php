<?php
require_once "connect.php";

$id = $_GET["id"];
$lanternTable = $dbh->query("SELECT * FROM platen WHERE id = $id")->fetch();

// use the $_POST variable to delete the record from the database
if (isset($_POST['submit'])) {
    $dbh->query("DELETE FROM platen WHERE id = $id");
    header("Location: index.php");
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beheersysteem | Infomenu</title>
    <link rel="stylesheet" href="details.css">
    <link rel="icon" href="https://in02.hostcontrol.com/resources/e63479f5bc869c/288e74fb90.PNG" type="image/png" sizes="16x16">

</head>

<body>
    <h1>Infomenu</h1>
    <form action="edit.php" method="get">
        <h2 class="header1"><?= $lanternTable['titel'] ?></h2>
        <br>
        <table class="table_small">
            <tr>
                <th>Informatie</th>
                <th>Informatie</th>
            </tr>
            <tr>
                <td>Onderwerp</td>
                <td><?= $lanternTable["onderwerp"] ?></td>
            </tr>
            <tr>
                <td>Reeks</td>
                <td><?= $lanternTable['reeks'] ?></td>
            </tr>
            <tr>
                <td>Nummers van de platen aanwezig</td>
                <td><?= $lanternTable["platen_nummer"] ?></td>
            </tr>
            <tr>
                <td>In doos, originele doos of niet</td>
                <td><?= $lanternTable['in_doos'] ?></td>
            </tr>
            <tr>
                <td>Conditie van de platen</td>
                <td><?= $lanternTable["conditie"] ?></td>
            </tr>
            <tr>
                <td>Afmetingen van de platen</td>
                <td><?= $lanternTable['maat'] ?></td>
            </tr>
        </table>
        <button type="submit" name="id" value="<?= $lanternTable["id"] ?>">Wijzig data</button>
    </form>
    <form action='delete.php?id="<?= $lanternTable['id']; ?>"' method="post">
        <input type="hidden" name="name" value="<?= $lanternTable["id"] ?>">
        <input type="submit" name="submit" value="Verwijder Data">
    </form>
    <br>
    <a href="index.php">
        <input type="submit" value="Terug naar Hoofdmenu">
    </a>
</body>

</html>