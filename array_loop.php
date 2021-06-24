<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "logical_test";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
//echo "Connected successfully";

$aplikasi = array();
$no = 1;
$sql = mysqli_query($conn, "SELECT * FROM tbl_looping");
while($row = mysqli_fetch_array($sql)) {
	echo "<br/>";
	$aplikasi = $row;
}

print_r($aplikasi);

?>