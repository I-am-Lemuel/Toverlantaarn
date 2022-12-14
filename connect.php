<?php

$servername = "localhost";
$username = "root";
$password = "pass";
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