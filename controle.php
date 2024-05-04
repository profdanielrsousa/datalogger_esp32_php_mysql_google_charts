  <?php
  header("Content-Type: text/plain"); //para responder em texto e não HTML para o ESP32

  //parte do código retirado do W3Scools: https://www.w3schools.com/php/php_mysql_select.asp
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "AulaSQL";

  // Create connection
  $conn = new mysqli($servername, $username, $password, $dbname);
  // Check connection
  if ($conn->connect_error) {
      die("Conexão com o Banco falhou: " . $conn->connect_error);
  }
  //seleciona o ultimo valor inserido na tabela controle
  $sql = "SELECT * FROM controle ORDER BY id DESC LIMIT 1 ";

  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
      // exibe os dados do banco 
      while ($row = $result->fetch_assoc()) {
          //respondendo apenas o ultimo valor do tempo do LED na tabela controle 
          echo "".$row["tempo"];
      }
  } else {
      //se não tem dados no servidor
      echo "nada";
  }
  $conn->close();
  ?>
