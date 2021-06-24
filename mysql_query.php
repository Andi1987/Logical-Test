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

$sql = mysqli_query($conn, "SELECT a.mhs_nim,a.mhs_nama, c.mk_nama,c.mk_kode, b.nilai FROM tb_mahasiswa a 
						JOIN tb_mahasiswa_nilai b ON b.mhs_id= a.mhs_id
						JOIN tb_matakuliah c ON c.mk_id = b.mk_id 
						WHERE a.mhs_id=b.mhs_id AND b.mk_id=c.mk_id AND c.mk_kode = 'MK303' AND b.nilai = '80' ");
	while($row = mysqli_fetch_array($sql)) {
		$result = $row;
	}
	print_r($result);
?>