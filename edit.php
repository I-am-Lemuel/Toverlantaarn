<?php
require_once "connect.php";

$id = $_GET["id"];

$query = "SELECT * FROM platen WHERE id = :id";
$stmt = $dbh->prepare($query);
$stmt->execute([
    ":id" => $id
]);
$lanternEdit = $stmt->fetch();

$nieuweTitel = $lanternEdit["titel"];
$nieuweReeks = $lanternEdit["reeks"];
$nieuweOnderwerp = $lanternEdit["onderwerp"];
$nieuwePlatenNummer = $lanternEdit["platen_nummer"];
$nieuweInDoos = $lanternEdit["in_doos"];
$nieuweConditie = $lanternEdit["conditie"];
$nieuweMaat = $lanternEdit["maat"];



if (isset($_POST['submit'])) {
    $nieuweTitel = $_POST["titel"];
    $nieuweReeks = $_POST["reeks"];
    $nieuweOnderwerp = $_POST["onderwerp"];
    $nieuwePlatenNummer = $_POST["platen_nummer"];
    $nieuweInDoos = $_POST["in_doos"];
    $nieuweConditie = $_POST["conditie"];
    $nieuweMaat = $_POST["maat"];
}

$edit = [
    ':id' => $id,
    ':titel' => $nieuweTitel,
    ':reeks' => $nieuweReeks,
    ':onderwerp' => $nieuweOnderwerp,
    ':platen_nummer' => $nieuwePlatenNummer,
    ':in_doos' => $nieuweInDoos,
    ':conditie' => $nieuweConditie,
    ':maat' => $nieuweMaat
];

$query =

    "UPDATE platen SET 

    titel = :titel,
    reeks = :reeks,
    onderwerp = :onderwerp,
    platen_nummer = :platen_nummer,
    in_doos = :in_doos,
    conditie = :conditie,
    maat = :maat

    WHERE id = :id";

if (isset($_POST['submit'])) {
    $stmt = $dbh->prepare($query);
    $stmt->execute($edit);
}

$stmt->debugDumpParams();


?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="edit.css">
    <link rel="icon" href="https://in02.hostcontrol.com/resources/e63479f5bc869c/288e74fb90.PNG" type="image/png" sizes="16x16">
    <title>Beheersysteem | Wijzigingsmenu</title>
</head>

<body>
    <h1>Wijzigingsmenu</h1>
    <form action="" method="post">
        <h2>Titel:<input type="text" id="titel" name="titel"></h2>
        <table>
            <tr>
                <th>Informatie</th>
                <th>Informatie</th>
            </tr>
            <tr>
                <td>Reeks</td>
                <td><input type="text" id="reeks" name="reeks"></td>
            </tr>
            <tr>
                <td>Onderwerp</td>
                <td><input type="text" id="onderwerp" name="onderwerp"></td>
            </tr>
            <tr>
                <td>Nummers van de platen aanwezig</td>
                <td><input type="text" id="platen_nummer" name="platen_nummer"></td>
            </tr>
            <tr>
                <td>In doos, originele doos of niet</td>
                <td><input type="text" id="in_doos" name="in_doos"></td>
            </tr>
            <tr>
                <td>Conditie van de platen</td>
                <td><input type="text" id="conditie" name="conditie"></td>
            </tr>
            <tr>
                <td>Afmetingen van de platen</td>
                <td><input type="text" id="maat" name="maat"></td>
            </tr>
            <input type="submit" name="submit" value="Wijzig Data">
        </form>

        <a href="index.php">
        <input type="button" value="Terug naar Hoofdmenu">
        </a>
</body>

</html>