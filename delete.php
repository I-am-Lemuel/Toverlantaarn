<?php
require_once "connect.php";

$id = $_GET["id"];

if (isset($_POST['submit'])) {
    $dbh->query("DELETE FROM platen WHERE id = $id");
    header("Location: index.php");
}

?>