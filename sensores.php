<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recebe dados por &_GET</title>
</head>
<body>
    <?php 
        //as variaveis da URL capturada por GET
        $data = test_input($_GET["data"]);
        $hora = test_input($_GET["hora"]);
        $temperatura = test_input($_GET["temp"]);
        $umidade = test_input($_GET["umid"]);
       
        // Parte retirada do link: https://www.w3schools.com/php/php_mysql_insert.asp
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
        $sql = "INSERT INTO sensores (data, hora, temperatura, umidade) VALUES ('$data', '$hora', '$temperatura', '$umidade')";

        if ($conn->query($sql) === TRUE) {
            echo "Registro Gravado com Sucesso";
        } else {
            echo "Erro: " . $sql . "<br>" . $conn->error;
        }

        $conn->close();
    
    //função importantissima para garantir a segurança do envio dos dados e vitar ataques Hacker
    //SEMPRE UTILIZAR
    function test_input($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    ?>
    
</body>
</html>