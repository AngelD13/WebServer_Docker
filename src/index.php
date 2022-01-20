<?php

$pdo = new \PDO("mysql:host=mysql; dbname=php_app", "root", "mysql");

print_r($pdo->query("SELECT * FROM users")->fetchAll());

echo "<br>_______________</br>";

phpinfo();

?>