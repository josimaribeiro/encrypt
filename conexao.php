
<?php
    
	$servername = "127.0.0.1";
	$username = "root";
	$password = "";
	$dbname = "encrypt";
	
	
	//Criar a conexao
	$connect = mysqli_connect($servername, $username, $password, $dbname);
	
	if(!$connect){
		die("Falha na conexao: " . mysqli_connect_error());
		exit();
	}
	
?>
