<?php

    include_once('config.php');

    if(!empty($_GET['id']))
    {
        
        $id = $_GET['id'];

        $sqlSelect = "SELECT * FROM tab_cadastro WHERE id=$id";

        $result = $conexao->query($sqlSelect); 

        if($result->num_rows > 0) 
        {
            while($user_data = mysqli_fetch_assoc($result))
            {
                $nome = $user_data['nome'];
                $rg = $user_data['rg'];
                $cnh = $user_data['cnh'];
                $empresa = $user_data['empresa'];
                $foto = $user_data['foto'];
                $motivo = $user_data['motivo'];
                $autorizadopor = $user_data['autorizadopor'];
                $integracao = $user_data['integracao'];
                $data_integ = $user_data['data_integ'];
                $usoepis = $user_data['usoepis'];
                $observ = $user_data['observ'];
            }
            //print_r($nome);
        }
        else
        {
            header('Location: sistema.php');
        }
    }
    else
        {
            header('Location: sistema.php');
        }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link REL="SHORTCUT ICON" HREF="sna.ico">
    <title>Formulário | SNA</title>
    <style>
        body{
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(to right, rgb(20, 147, 220), rgb(17, 54, 71));
            color: white;
        }
        .box{
            color: white;
            position: absolute;
            top: 83%;
            left: 50%;
            transform: translate(-50%,-50%);
            background-color: rgba(17, 54, 71, 0.5);
            padding: 15px;
            border-radius: 15px;
            width: 40%;
        }
        fieldset{
            border: 0px solid dodgerblue;
        }
        legend{
            border: 1px solid dodgerblue;
            padding: 10px;
            text-align: center;
            background-color: dodgerblue;
            border-radius: 8px;
        }
        .inputBox{
            position: relative;
        }
        .inputUser{
            background: none;
            border: none;
            border-bottom: 1px solid white;
            outline: none;
            color: white;
            font-size: 15px;
            width: 100%;
            letter-spacing: 2px;
        }
        .labelInput{
            position: absolute;
            top: 0px;
            left: 0px;
            pointer-events: none;
            transition: .5s;
        }
        .inputUser:focus ~ .labelInput,
        .inputUser:valid ~ .labelInput{
            top: -20px;
            font-size: 12px;
            color: dodgerblue;
        }
        #data_integracao{
            border: none;
            padding: 8px;
            border-radius: 10px;
            outline: none;
            font-size: 15px;
        }
        #update{
            background-image: linear-gradient(to right,rgb(0, 92, 197), rgb(90, 20, 220));
            width: 100%;
            border: none;
            padding: 15px;
            color: white;
            font-size: 15px;
            cursor: pointer;
            border-radius: 10px;
        }
        #update:hover{
            background-image: linear-gradient(to right,rgb(0, 80, 172), rgb(80, 19, 195));
        }
        .d-flex{
            color: black;

        }
        .FotoPerfil{
            padding-top: 10px;
            border: none;
            width: 20px;
            margin:30px;
            
           

        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Formulário de Cadastro | SNA</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="d-flex">
            <a href="sistema.php" class="btn btn-danger me-5">Relatório</a>
        </div>
        <div class="d-flex">
            <a href="sair.php" class="btn btn-danger me-5">Sair</a>
        </div>
        
    </nav>

    <div class="FotoPerfil">
        <img src="../imagens/CartolaFC.PNG" alt="">

    </div>
    
    <div class="box">
        <form action="formulario.php" method="POST">
            <fieldset>
                <!--<legend><b>Formulário de Cadastro</b></legend>-->
                <br>
                <div class="inputBox">
                    <input type="text" name="nome" id="nome" class="inputUser" value="<?php echo $nome ?>" required>
                    <label for="nome" class="labelInput">Nome Completo.:</label>
                </div>
                <br>
                <div class="inputBox">
                    <input type="text" name="rg" id="rg" class="inputUser" value="<?php echo $rg ?>" required>
                    <label for="rg" class="labelInput">R.G.:</label>
                </div>
                <br>
                <div class="inputBox">
                    <input type="text" name="cnh" id="cnh" class="inputUser" value="<?php echo $cnh ?>" required>
                    <label for="cnh" class="labelInput">CNH.:</label>
                </div>
                <br>
                <div class="inputBox">
                    <input type="text" name="empresa" id="empresa" class="inputUser" value="<?php echo $empresa ?>" required>
                    <label for="empresa" class="labelInput">Empresa.:</label>
                </div>
                <br>
                <div class="inputBox">
                    <input type="text" name="foto" id="foto" class="inputUser" value="<?php echo $foto ?>">
                    <label for="foto" class="labelInput">Foto.:</label>
                </div>
                <p>Motivo da Entrada.:</p>
                <input type="radio" id="visita" name="motivo" value="visita" <?php echo $motivo == 'visita' ? 'checked' : '' ?> required>
                <label for="visita">Visita</label>
                <br>
                <input type="radio" id="prestserv" name="motivo" value="prestserv" <?php echo $motivo == 'prestserv' ? 'checked' : '' ?> required>
                <label for="prestserv">Prestador de Serviços / Fornecedores</label>
                <br>
                <input type="radio" id="descarte" name="motivo" value="descarte" <?php echo $motivo == 'descarte' ? 'checked' : '' ?> required>
                <label for="descarte">Descarte de Resíduos</label>
                <br><br><br>
                <div class="inputBox">
                    <input type="text" name="autorizadopor" id="autorizadopor" class="inputUser" value="<?php echo $autorizadopor ?>" required>
                    <label for="motivo" class="labelInput">Autorizado Por.:</label>
                </div>
                <br>
                
                <p>Fez Integração?</p>
                <input type="radio" id="sim" name="integ" value="sim" <?php echo $integracao == 'sim' ? 'checked' : '' ?> required>
                <label for="sim">Sim</label>
                <br>
                <input type="radio" id="nao" name="integ" value="nao" <?php echo $integracao == 'nao' ? 'checked' : '' ?> required>
                <label for="nao">Não</label>
                <br><br>
                <label for="data_integracao">Data da Integraçao.:</label><br>
                <input type="date" name="data_integracao" id="data_integracao" value="<?php echo $data_integ ?>" required>
                <br><br>
                 <p>Uso de EPIs?</p>
                <input type="radio" id="sim" name="usoepis" value="sim" <?php echo $usoepis == 'sim' ? 'checked' : '' ?> required>
                <label for="sim">Sim</label>
                <br>
                <input type="radio" id="nao" name="usoepis" value="nao" <?php echo $usoepis == 'nao' ? 'checked' : '' ?> required>
                <label for="nao">Não</label>
                <br><br>
                <div class="inputBox">
                    <input type="text" name="observacao" id="observacao" class="inputUser" value="<?php echo $observ ?>" required>
                    <label for="observacao" class="labelInput">Observação.:</label>
                </div>
                <br><br>
                <input type="hidden" name="id" value="<?php echo $id ?>">
                <input type="submit" name="update" id="update">
            </fieldset>
        </form>
    </div>
</body>
</html>