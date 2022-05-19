<?php

    if(isset($_POST['submit']))
    {
        //print_r('Nome: ' . $_POST['nome']);
        //print_r('<br>');
        //print_r('RG: ' . $_POST['rg']);
        //print_r('<br>');
        // print_r('Empresa: ' . $_POST['empresa']);
        // print_r('<br>');
        // print_r('Fez integração: ' . $_POST['integ']);
        // print_r('<br>');
        // print_r('Data da Integração: ' . $_POST['data_integracao']);
        // print_r('<br>');
        // print_r('Observação: ' . $_POST['observacao']);
        // print_r('<br>');

        include_once('config.php');

        $nome = $_POST['nome'];
        $rg = $_POST['rg'];
        $cnh = $_POST['cnh'];
        $empresa = $_POST['empresa'];
        $foto = $_POST['foto'];
        $motivo = $_POST['motivo'];
        $autorizadopor = $_POST['autorizadopor'];
        $integracao = $_POST['integ'];
        $data_integ = $_POST['data_integracao'];
        $usoepis = $_POST['usoepis'];
        $observ = $_POST['observacao'];
      
        $result = mysqli_query($conexao, "INSERT INTO tab_cadastro(nome,rg,cnh,empresa,foto,motivo,autorizadopor,integracao,data_integ,usoepis,observ) 
        VALUES ('$nome','$rg','$cnh','$empresa','$foto','$motivo','$autorizadopor','$integracao','$data_integ','$usoepis','$observ')");

        header('Location: sistema.php');
        //echo  "<script>alert('Cadastro Efetuado!!!');</script>";
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
            top: 82%;
            left: 50%;
            transform: translate(-50%,-50%);
            background-color: rgba(17, 54, 71, 0.5);
            padding: 15px;
            border-radius: 15px;
            width: 50%;
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
        #data_visita{
            border: none;
            padding: 8px;
            border-radius: 10px;
            outline: none;
            font-size: 15px;
        }
        #submit{
            background-image: linear-gradient(to right,rgb(0, 92, 197), rgb(90, 20, 220));
            width: 100%;
            border: none;
            
            padding: 15px 20px;
            color: white;
            font-size: 15px;
            cursor: pointer;
            border-radius: 10px;
        }
        #submit:hover{
            background-image: linear-gradient(to right,rgb(0, 80, 172), rgb(80, 19, 195));
        }
        .d-flex{
            color: black;
        }
        .divepis {

            display: inline-block;
            width: 300px;
            height: 300px;
            
        }
        #div1 {
            /*background-color: blue;*/

        }

        #div2 {
           /* background-color: gray;*/
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
    <!--<a href="home.php">Voltar</a>-->
    <div class="box">
        <form action="formulario.php" method="POST">
            <fieldset>
                <!--<legend><b>Formulário de Cadastro</b></legend>-->
                <br>
                <div class="inputBox">
                    <input type="text" name="nome" id="nome" class="inputUser" required>
                    <label for="nome" class="labelInput">Nome Completo.:</label>
                </div>
                <br>
                <div class="inputBox">
                    <input type="text" name="rg" id="rg" class="inputUser" required>
                    <label for="rg" class="labelInput">R.G.:</label>
                </div>
                <br>
                <div class="inputBox">
                    <input type="text" name="cnh" id="cnh" class="inputUser" required>
                    <label for="cnh" class="labelInput">CNH.:</label>
                </div>
                <br>
                <div class="inputBox">
                    <input type="text" name="empresa" id="empresa" class="inputUser" required>
                    <label for="empresa" class="labelInput">Empresa.:</label>
                </div>
                <br>
                <div class="inputBox">
                    <label>Foto do Visitante.: <input type="file" name="foto" id="foto" class="inputUser"> </label>
                    <input type="submit" value="Salvar">
                </div>
                <br>
                <p>Motivo da Entrada.:</p>
                <input type="radio" id="visita" name="motivo" value="visita" required>
                <label for="visita">Visita</label>
                <br>
                <input type="radio" id="prestserv" name="motivo" value="prestserv" required>
                <label for="prestserv">Prestador de Serviços / Fornecedores</label>
                <br>
                <input type="radio" id="descarte" name="motivo" value="descarte" required>
                <label for="descarte">Descarte de Resíduos</label>
                <br><br>
                <div class="inputBox">
                    <input type="text" name="autorizadopor" id="autorizadopor" class="inputUser" required>
                    <label for="autorizadopor" class="labelInput">Autorizado Por.:</label>
                </div>
                <br>
                <label for="data_visita">Data da Visita.:</label><br>
                <input type="date" name="data_visita" id="data_visita" required>
                <hr>
                
                <div class="divepis">
                <div id="div1">
                    <p>Fez Integração?</p>
                    <input type="radio" id="sim" name="integ" value="sim" required>
                    <label for="sim">Sim</label>
                    <input type="radio" id="nao" name="integ" value="nao" required>
                    <label for="nao">Não</label>
                    <br><br>
                    <label for="data_integracao">Data da Integraçao.:</label><br>
                    <input type="date" name="data_integracao" id="data_integracao" required>
                    <br><br>
                </div>
                <div id="div2">
                    <p>Uso de EPIs?</p>
                    <input type="radio" id="sim" name="usoepis" value="sim" required>
                    <label for="sim">Sim</label>
                    <input type="radio" id="nao" name="usoepis" value="nao" required>
                    <label for="nao">Não</label>
                    
                </div>
                </div>

                <div class="inputBox">
                    <input type="text" name="observacao" id="observacao" class="inputUser" required>
                    <label for="observacao" class="labelInput">Observação.:</label>
                </div>
                <br>
                
                <input type="submit" name="submit" id="submit">
            </fieldset>
        </form>
    </div>
</body>
</html>