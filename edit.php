<?php
require_once "connect.php";

// Form is submitted
if (isset($_POST["id"])) {
    $titel = $_POST["titel"];
    $onderwerp = $_POST["onderwerp"];
    $reeks = $_POST["reeks"];
    $platen_nummer = $_POST["platen_nummer"];
    $in_doos = $_POST["in_doos"];
    $conditie = $_POST["conditie"];
    $maat = $_POST["maat"];

    try {
        $dsn = "mysql:host=$servername;dbname=$dbname;charset=$charset";
        $dbh = new PDO($dsn, $username, $password);
        $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $dbh->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        $sql = "UPDATE platen SET
        `titel`='$titel',
        `onderwerp`='$onderwerp',
        `reeks`='$reeks',
        `platen_nummer`='$platen_nummer',
        `in_doos`='$in_doos',
        `conditie`='$conditie',
        `maat`='$maat'
        WHERE id=$id";
        $stmt = $dbh->prepare($sql);
        $stmt->execute();
        echo "records UPDATED successfully";
    } catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Beheersysteem | Wijzigingsmenu</title>
</head>

<body>
    <h1>Wijzigingsmenu</h1>
    <form action="edit.php" method="post" style="display: flex; flex-direction: column; align-items: flex-start;">
        <input type="hidden" name="id" value="<?= $id ?>">
        <h2>Titel:<input type="text" name="titel" value="<?= $lanternTable["titel"] ?>"></h2>
        <table class="table_small">
            <tr>
                <th>Informatie</th>
                <th>Informatie</th>
            </tr>
            <tr>
                <td>Nummers van de platen aanwezig</td>
                <td><input type="text" name="platen_nummer" value="<?= $lanternTable["platen_nummer"] ?>"></td>
            </tr>
            <tr>
                <td>Onderwerp</td>
                <td><input type="text" name="onderwerp" value="<?= $lanternTable["onderwerp"] ?>"></td>
            </tr>
            <tr>
                <td>Afmetingen van de platen</td>
                <td><input type="text" name="maat" value="<?= $lanternTable["maat"] ?>"></td>
            </tr>
            <tr>
                <td>In doos, originele doos of niet</td>
                <td><input type="text" name="in_doos" value="<?= $lanternTable["in_doos"] ?>"></td>
            </tr>
            <tr>
                <td>Conditie van de platen</td>
                <td><input type="text" name="conditie" value="<?= $lanternTable["conditie"] ?>"></td>
            </tr>
            <tr>
                <td>Reeks</td>
                <td><input type="text" name="reeks" value="<?= $lanternTable["reeks"] ?>"></td>
            </tr>
        <input type="submit" value="wijzig data">
    </form>
    <a href="index.php">
        <input type="button" value="Terug naar Hoofdmenu">
    </a>
</body>

</html>