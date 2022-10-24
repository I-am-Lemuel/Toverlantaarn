<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Platen Beheersysteem | Hoofdmenu</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <?php
    session_start();
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "toverlantaarn";
    $charset = "utf8mb4";

    try {
        $dsn = "mysql:host=$servername;dbname=$dbname;charset=$charset";
        $dbh = new PDO($dsn, $username, $password);
        $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $dbh->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
    }
    $lanternTitle = $dbh->query('SELECT titel FROM platen')->fetchAll();
    $lanternID = $dbh->query('SELECT id FROM platen')->fetchAll();
    //Control if user is not logged in
    if (!isset($_SESSION['loggedInUser'])) {
        header('Location: login.php');
        die();
    }
    //remove session variable if user is logged out
    if (isset($_POST['logout'])) {
        header('Location: logout.php');
    }
    ?>
    <header class="idk">
        <div class="header1">
            <h3>Welkom bij het Toverlantaarn Museum Heilo Beheersysteem</h3>
            
        </div>
        <form method="post" action="index.php">
            <button type="submit" id="logout" name="logout">Log Out</button>
            </form>
    </header>
    <div class="tables">
        <div class="table1">
            <div class="title">
                <h2>Platen</h2>
            </div>
            <form method="get" action="details.php">
                <table>
                    <tr>
                        <td>Titel</td>
                        <td>Info</td>
                    </tr>
                    <?php
                    for ($i = 0; $i < count($lanternTitle); $i++) {
                        ?>
                            <tr>
                            <td><?= $lanternTitle[$i]["titel"] ?></td>
                            <td><button name="id" type="submit" value="<?= $lanternID[$i]["id"] ?>">Bekijk info</button></td>
                        </tr>
                        <?php
                    }
                    ?>
                </table>
            </form>
            <a href="insert.php">
                <input type="submit" value="Data toevoegen"/>
            </a>
        </div>
    </div>
</body>

</html>