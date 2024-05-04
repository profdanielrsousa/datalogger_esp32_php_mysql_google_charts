<!DOCTYPE html>
<html lang="en">
<head>
  <title>Gráfico de Temperatura - ESP32 + PHP + MYSQL + Google Charts</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
  <meta http-equiv='refresh' content='60' URL=''>    
  <!-- CSS -->
  <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <!-- JS -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <!-- Google Chart -->  
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>
<?php

  //Inclui a conexão com o BD
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
  
//Faz o SELECT da tabela, usando Prepared Statements.
$sql = "SELECT data, hora, temperatura, umidade FROM sensores ORDER BY id DESC LIMIT 100";
  
$stmt = $conn->prepare($sql);
$stmt->execute();
$stmt->bind_result($data, $hora, $temp, $umid);
$stmt->store_result();
//Cria o array primário
$dados = array();
//Laço dos dados
 while ($ln = $stmt->fetch()){
//Cria o array secundário, onde estarão os dados.
    $temp_hora = array();
	$temp_hora[] = ((string) $hora);
    $temp_hora[] = ((float) $temp);
    $temp_hora[] = ((float) $umid);
   
//Recebe no array principal, os dados.
    $dados[] = ($temp_hora);
}
//Trasforma os dados em JSON
  $jsonTable = json_encode($dados);
//echo $jsonTable;
?>

<?php
  echo "<h3 align=\"center\">Gráfico de Temperatura e Umidade - ESP32 + PHP + MYSQL + Google Charts ("; 
  echo date('d/m/Y',  strtotime($data));
  echo ")</h3>";  
?>
  
<!-- Div do Gráfico -->
<div class="container" style="height: 300px; width: 100%" id="chart_div"></div>
  
<br><br>
  
</body>
  
<script>
//Script do Google que define o TIPO do gráfico
google.charts.load('current', {packages: ['corechart', 'line']});
google.charts.setOnLoadCallback(drawBackgroundColor);
//Define o tipo de coluna e o nome
function drawBackgroundColor() {
      var data = new google.visualization.DataTable();
      data.addColumn('string', 'Horario');
      data.addColumn('number', 'Temperatura (°C)');
      data.addColumn('number', 'Umidade (%)');
    
      //Captura os dados em JSON e monta o gráfico, de acordo com os dados.
      data.addRows( <?php echo $jsonTable ?>);
//Opções do gráfico:  
      var options = {        
        fontSize: 10,
        
        lineWidth: 2,      
        curveType: 'function',
        
        hAxis: {
          title: 'Hora',
		  direction: "-1",
          titleTextStyle: { color: '#000000',
            fontName: 'Arial',
            fontSize: 20,
            bold: 1,
            italic: 0 }
        },
        vAxis: {
          title: 'Temperatura / Umidade',
          titleTextStyle: { color: '#000000',
            fontName: 'Arial',
            fontSize: 16,
            bold: 1,
            italic: 0 }
        },
        backgroundColor: '#f1f8e9'  
      };
  
//Criação do Gráfico 
      var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    }
</script>

</html>