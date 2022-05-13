<?php

	include_once('config.php');

	if(isset($_POST['update']))
	{
		$id = $_POST['id'];
        $nome = $_POST['nome'];
        $rg = $_POST['rg'];
        $empresa = $_POST['empresa'];
        $integracao = $_POST['integracao'];
        $data_integ = $_POST['data_integ'];
        $observ = $_POST['observ'];


		$sqlInsert = "UPDATE tab_cadastro 
        SET nome='$nome',rg='$rg',empresa='$empresa',integracao='$integracao',data_integ='$data_integ',observ='$observ'
        WHERE id=$id";

        $result = $conexao->query($sqlInsert);
        print_r($result);

    }

    header('Location: sistema.php');
    


?>