<?php
$servername = "localhost";
$username = "bit_academy";
$password = "bit_academy";
$dbname = "toverlantaarn";
$charset = "utf8mb4";

try {
    $dsn = "mysql:host=$servername;dbname=$dbname;charset=$charset";
    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

if (isset($_POST['titel'])) {
    $titel = $_POST["titel"];
    $reeks = $_POST["reeks"];
    $onderwerp = $_POST["onderwerp"];
    $platen_nummer = $_POST["platen_nummer"];
    $in_doos = $_POST["in_doos"];
    $conditie = $_POST["conditie"];
    $maat = $_POST["maat"];
    if (isset($_POST['data'])) {
        $media_type = 'serie';
        $stmt = "INSERT INTO 
        `platen`
        (`titel`, `reeks`, `onderwerp`, `platen_nummer`, `in_doos`, `maat`)
        VALUES 
        ('$titel', '$reeks', '$onderwerp', '$platen_nummer', '$in_doos', '$maat')";
        $pdo->exec($stmt);
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <titel>Beheersysteem | Toevoegingsmenu</titel>
    <link rel="stylesheet" href="style.css">
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
                <td><input type="text" name="onderwerp" required></td>
            </tr>
            <tr>
                <td>Nummers van de platen aanwezig</td>
                <td><input type="text" name="platen_nummer" required></td>
            </tr>
            <tr>
                <td>In doos, originele doos of niet</td>
                <td><input type="text" name="in_doos" required></td>
            </tr>
            <tr>
                <td>Conditie van de platen</td>
                <td><input type="text" name="conditie" required></td>
            </tr>
            <tr>
                <td>Afmetingen van de platen</td>
                <td><input type="text" name="maat" required></td>
            </tr>
            <tr>
                <td>Reeks</td>
                <td><input type="text" name="reeks" required></td>
            </tr>
        </table>
        <br>
        <input type="submit" value="data toevoegen" name="data">
    </form>
    <a href="index.php">
        <input type="button" value="Terug naar hoofdmenu">
    </a>
</body>

</html>