<?php
    $pdo = new PDO('mysql:host=127.0.0.1; port=3325; dbname=bloodbank','surab','neel');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
?>