<?php
session_start();
require_once "connect.php";


//Control if user is not logged in
if (!isset($_SESSION['loggedInUser'])) {
    header('Location: login.php');
    die();
}
//remove session variable if user is logged out
if (isset($_POST['logout'])) {
    header('Location: logout.php');
}

$sql_select = "SELECT id, reeks, onderwerp, titel, platen_nummer, in_doos, conditie, maat FROM platen";
$sql_query = $dbh->query($sql_select);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/tbolt/boltcss/bolt.css">
    <title>Platen Beheersysteem | Hoofdmenu</title>
    <link rel="stylesheet" href="index.css">
    <link rel="icon" href="https://in02.hostcontrol.com/resources/e63479f5bc869c/288e74fb90.PNG" type="image/png" sizes="16x16">
</head>

<body>

    <header>
        <div class="container">
            <div class="empty">

            </div>
            <div class="text">
                <h3>Welkom bij het Toverlantaarn Museum Heilo Beheersysteem</h3>
            </div>
            <div class="buttons">
                <ul class="button_collect">
                    <li>
                        <a href="insert.php">
                            <button type="button" value="Data toevoegen">Data Toevoegen</button>
                        </a>
                    </li>
                    <li>
                        <a href="logout.php">
                            <button type="button" value="Uitloggen">Uitloggen</button>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </header>

    <div class="tables">
        <div class="table1">
            <div class="title"  >
                <h2>Platen</h2>
            </div>
            <form method="get" action="details.php" style="display: flex;justify-content: space-evenly;" >
                <table>
                    <tr>
                        <td>Info</th>
                        <td>Titel</th>
                    </tr>
                    <?php
                    $rowcounter = 0;
                    if ($sql_query->rowCount() > 0) {
                        while ($row = $sql_query->fetch()) {
                            $rowcounter ++; 
                    ?> 

                            <tr>

                                <td scope="row"><a href="details.php?id=<?= $row['id'] ?>">Bekijk Details</a></td>
                                <td><?= $row['titel'] ?> </td>
                            </tr>
                            <?php
                            if ($rowcounter % 94 == 0) {
                            ?>
                </table>
                <table>
                    <tr>
                        <td>Info</th>
                        <td>Titel</th>
                    </tr>
        <?php
                            }
                        }
                    }

        ?>
                </table>
            </form>
        </div>
    </div>
</body>

</html>