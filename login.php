<?php
session_start();
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
$toverlantaarn_username = $pdo->query("SELECT username FROM gebruikers")->fetchAll();
$toverlantaarn_password = $pdo->query("SELECT password FROM gebruikers")->fetchAll();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beheersysteem | Inlogmenu</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <h1>Toverlantaarn Museum Heilo Beheersysteem</h1>
    <h2>Log in om verder te gaan</h2>
    <form method="post" action="login.php">
        <input type="text" name="username" placeholder="Gebruikersnaam">
        <input type="password" name="password" placeholder="Wachtwoord">
        <input type="submit" name="submit" value="Inloggen">
        <?php
        if (isset($_POST['submit'])) {
            if ($toverlantaarn_username[0]['username'] == $_POST['username'] && $toverlantaarn_password[0]['password'] == $_POST['password']) {
                $_SESSION['loggedInUser'] = true;
                header('Location: index.php');
            } else {
                ?>
                <h2 style="color:red">Incorrecte gebruikersnaam of Wachtwoord.</h2>
                <?php
            }
        }
        ?>
    </form>
</body>

</html>