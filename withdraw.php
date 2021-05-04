<?php

$conn = mysqli_connect("localhost","root","","onlinecourse") or  die("Connection Failed");

$co_id = $_GET['cnt'];

$sql = "DELETE FROM courseenrolls.course WHERE id='{co_id}'";

$result = mysqli_query ($conn, $sql) or die("Query Unsuccessful.");

header("Location: http://localhost/Online course registartion/onlinecourse/enroll-history.php");

mysqli_close($conn);

?>