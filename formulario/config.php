<?php
	
 
	
	$dbHost = 'Localhost';
	$dbUsername = 'root';
	$dbPassword = '';
	$dbName = 'form-cad';
	
	$conexao = new mysqli($dbHost,$dbUsername,$dbPassword,$dbName);

	 if($conexao->connect_errno) 
	{
	echo "Erro";
	 }
	else 
	 {
		//echo  "<script>alert('Cadastro Efetuado!!!');</script>";
		//echo "Banco conectado!!!";
	 }




?>