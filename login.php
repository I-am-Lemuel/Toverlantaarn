<?php
session_start();
require_once "connect.php";

$toverlantaarn_username = $dbh->query("SELECT username FROM gebruikers")->fetchAll();
$toverlantaarn_password = $dbh->query("SELECT password FROM gebruikers")->fetchAll();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" href="https://in02.hostcontrol.com/resources/e63479f5bc869c/288e74fb90.PNG" type="image/png" sizes="16x16">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.0/css/fontawesome.min.css">
  <title>Beheersysteem | Inlogmenu</title>
  <!-- <link rel="stylesheet" href="style.css"> -->
  <link rel="stylesheet" href="login.css">
</head>

<body>
  <!-- <h1>Toverlantaarn Museum Heilo Beheersysteem</h1>
    <h2>Log in om verder te gaan</h2> -->

  <div class="Login">
    <div class="section">
      <div class="login bg-white m-4">
        <h1 class="text-center">
          <img src="https://in02.hostcontrol.com/resources/e63479f5bc869c/288e74fb90.PNG" alt="foto" height="100" width="100">

          <form class="" method="post" action="login.php">
            <input type="text" class="form-control" name="username" placeholder="Gebruikersnaam">
            <input type="password" class="form-control" name="password" placeholder="Wachtwoord">
            <input type="submit" class="btn btn-primary w-100" name="submit" value="Inloggen">
            <?php
            if (isset($_POST['submit'])) {
              if ($toverlantaarn_username[0]['username'] == $_POST['username'] && $toverlantaarn_password[0]['password'] == $_POST['password']) {
                $_SESSION['loggedInUser'] = true;
                header('Location: index.php');
              } elseif ($toverlantaarn_username[0]['username'] == "" &&  $toverlantaarn_password[0]['password'] == "") {
            ?>
                <div class="fout">
                  <p style="color:red">Incorrecte gebruikersnaam of Wachtwoord.</p>
                </div>
              <?php
              } else {
              ?>
                <div class="fout">
                  <p style="color:red">Incorrecte gebruikersnaam of Wachtwoord.</p>
                </div>
            <?php
              }
            }
            ?>
      </div>

      </form>
</body>

</html>