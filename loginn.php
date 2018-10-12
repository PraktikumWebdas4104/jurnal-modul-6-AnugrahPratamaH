<form method="POST">
	<table>
		<tr>
			<td>Nim</td>
			<td>:</td>
			<td><input type="number" name="nim" length=10></td>
		</tr>
		<tr>
			<td>Password</td>
			<td>:</td>
			<td><input type="Password" name="pass"></td>
		</tr>
	</table>
	<br><br>
	<input type="submit" name="masuk" value="masuk">
</form>
<?php 
	error_reporting(0);
	if(isset($_POST['masuk'])){
	session_start();	
	$nim=$_POST['nim'];
	$password=$_POST['pass'];

	$host="localhost";
	$user="root";
	$pass="";
	$db="mhs";
	$conn=mysqli_connect($host,$user,$pass,$db);

		$sql=$conn->query("SELECT `nim`,`password` FROM `datamhs` WHERE `nim`='$nim' AND `password`='$password'");
		$row=mysqli_fetch_array($sql);

		$sqli=$conn->query("SELECT `nama`,`nim`,`password`,`kelas`,`jenis_kelamin`,`hobi`,`fakultas`,`alamat` FROM `datamhs` WHERE `nim`='$nim'");
		$roww=mysqli_fetch_array($sqli);

		if($nim==$row[0]&&$password==$row[1]){
			$_SESSION['nim'] = $nim;
			$_SESSION['password']= $password;
			echo "Nama 	   		:".$roww[0]."<br>";
			echo "Nim  	   		:".$roww[1]."<br>";
			echo "Password 		:".$roww[2]."<br>";
			echo "kelas    		:".$roww[3]."<br>";
			echo "Jenis Kelamin :".$roww[4]."<br>";
			echo "Hobi       	:".$roww[5]."<br>";
			echo "Fakultas 		:".$roww[6]."<br>";
			echo "Alamat 		:".$roww[7]."<br>";
		}else{
			echo "NIM / PASSWORD SALAH";
		}

	}
	
 ?>		
