<?php
// Database connection
include 'db.php';

$id = $_GET['id'];
$mysqli->query("DELETE FROM items WHERE id = $id");

header("Location: index.php");
?>
