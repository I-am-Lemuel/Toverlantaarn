<?php
require_once "connect.php";


$newTitle = "";
$newReeks = "";
$newOnderwerp = "";
$newPlatenNummer = "";
$newInDoos = "";
$newConditie = "";
$newMaat = "";

if (isset($_POST["submit"])) {
    $newTitle = $_POST["titel"];
    $newReeks = $_POST["reeks"];
    $newOnderwerp = $_POST["onderwerp"];
    $newPlatenNummer = $_POST["platen_nummer"];
    $newInDoos = $_POST["in_doos"];
    $newConditie = $_POST["conditie"];
    $newMaat = $_POST["maat"];


    $input = [
        ':titel' => $newTitle,
        ':reeks' => $newReeks,
        ':onderwerp' => $newOnderwerp,
        ':platen_nummer' => $newPlatenNummer,
        ':in_doos' => $newInDoos,
        ':conditie' => $newConditie,
        ':maat' => $newMaat
    ];

    $query = 
        "INSERT INTO platen (titel, reeks, onderwerp, platen_nummer, in_doos, conditie, maat)
    VALUES (:titel, :reeks, :onderwerp, :platen_nummer, :in_doos, :conditie, :maat)";

    $statement = $dbh->prepare($query);
    $statement->execute($input);

}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beheersysteem | Toevoegingsmenu</title>
    <link rel="stylesheet" href="insert.css">
    <link rel="icon" href="https://in02.hostcontrol.com/resources/e63479f5bc869c/288e74fb90.PNG" type="image/png" sizes="16x16">

</head>

<body>
    <h1>Toevoegingsmenu</h1>
    <br>
    <form action="insert.php" method="post">
        <br>
        <table>
            <tr>
                <td>Titel</td>
                <td><input type="text" name="titel" required></td>
            </tr>
            <tr>
                <td>Onderwerp</td>
                <td><input type="text" name="onderwerp"></td>
            </tr>
            <tr>
                <td>Nummers van de platen aanwezig</td>
                <td><input type="text" name="platen_nummer"></td>
            </tr>
            <tr>
                <td>In doos, originele doos of niet</td>
                <td><input type="text" name="in_doos"></td>
            </tr>
            <tr>
                <td>Conditie van de platen</td>
                <td><input type="text" name="conditie"></td>
            </tr>
            <tr>
                <td>Afmetingen van de platen</td>
                <td><input type="text" name="maat"></td>
            </tr>
            <tr>
                <td>Reeks</td>
                <td><input type="text" name="reeks"></td>
            </tr>
        </table>
        <br>
        <input type="submit" value="data toevoegen" name="submit">
    </form>
    <a href="index.php">
        <input type="button" value="Terug naar hoofdmenu">
    </a>
</body>

</html>