<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajusta tempo entre leituras</title>
</head>

<body>
    <?php
    // define variables and set to empty values
    $tempo = "";

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
      	date_default_timezone_set('America/Sao_Paulo');
        $tempo = test_input($_POST["tempo"]);
        $dataAtual = date('Y-m-d');
		$horaAtual = date('h:i:s');
		
        //Código retirado do link: https://www.w3schools.com/php/php_mysql_insert.asp
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "AulaSQL";

        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        //este comando SQL FOI MODIFICADO para ficar em coerencia com a tabela se seus campos.
        $sql = "INSERT INTO controle (data, hora, tempo) VALUES ( '$dataAtual' , '$horaAtual', '$tempo')";

        if ($conn->query($sql) === TRUE) {
            echo "Registro Gravado com Sucesso";
        } else {
            echo "Erro: " . $sql . "<br>" . $conn->error;
        }

        $conn->close();
    }

    function test_input($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    ?>

    <h3>Ajusta tempo entre leituras</h3>
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        Valor de tempo entre leituras (ms): <input type="text" name="tempo">
        <input type="submit" name="submit" value="Salvar Valor">
    </form>

    <?php
    echo "<h3>Valor cadastrado: $tempo ms</h3>";  
    ?>

</body>

</html>