<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link REL="SHORTCUT ICON" HREF="sna.ico">
    <title>Tela de login | SNA</title>
    <style>
        body{
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(to right, rgb(20, 147, 220), rgb(17, 54, 71));
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;


            /*background-image: linear-gradient(45deg, cyan, yellow);*/
        }
        h1{
            text-align: center;
            color: white;
        }
        div{
            background-color: rgba(88, 177, 252, 1);
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            padding: 80px;
            border-radius: 15px;
            color: #fff;
        }
        img{
            padding: 10px;
            border: none;
            width: 100%;
        }

        input{
            padding: 15px;
            border: none;
            outline: none;
            font-size: 15px;
            border-radius: 10px;
        }
        .inputSubmit{
            background-color: dodgerblue;
            border: none;
            padding: 15px;
            width: 100%;
            border-radius: 10px;
            color: white;
            font-size: 20px;

        }
        a{
            color: #FFF;
        }

        .inputSubmit:hover{
            background-color: rgba(20, 147, 220, 1);
            cursor: pointer;
        }
        footer {
        position: absolute;
        bottom: 0;
        /*background-color: blue;*/
        color: #FFF;
        width: 100%;
        height: 100px;    
        text-align: center;
        line-height: 150px;
        }
    </style>
</head>
<body>
    
        
    
        <h1>SISTEMA DE CADASTRO DE VISITANTES</h1>
        <br><br>
        <div>
        <form action="testLogin.php" method="POST">   
     
            <img src="../imagens/logo.png" alt="">
            <br><br>
            <input type="text" name="login" placeholder="Nome">
            <br><br>
            <input type="password" name="senha" placeholder="Senha">
            <br><br>
            <input class="inputSubmit" type="submit" name="submit" value="Entrar">
            <!--<button><a href="formulario/formulario.php" style="text-decoration:none">Entrar</a></button>-->
        </form>
    </div>
    <footer>TI SNA versão 0.0.1</footer>
</body>
</html>