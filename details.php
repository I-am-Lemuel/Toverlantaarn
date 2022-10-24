<?php
require_once "connect.php";
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beheersysteem | Infomenu</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <h1>Infomenu</h1>
    <form action="edit.php" method="get">
        <!-- controleren welke id achter de link staat -->
        <?php
        $id = $_GET["id"];
        $lanternTable = $dbh->query('SELECT * FROM platen WHERE id = ' . $id)->fetch();
        ?>
        <!-- bijbehorende informatie displayen -->
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
    <br>
    <a href="index.php">
        <input type="submit" value="Terug naar Hoofdmenu">
    </a>
</body>

</html>