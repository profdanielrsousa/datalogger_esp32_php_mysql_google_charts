#include <esp_task_wdt.h>

#include <SPI.h>
#include <Wire.h>

#define SSD1306_NO_SPLASH

#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#include <WiFi.h>
#include <HTTPClient.h> //Biblioteca para acessar como cliente
//Fork da biblioteca NTPClient -> https://github.com/taranais/NTPClient
#include <NTPClient.h>

#include "DHT.h"

//#define DHTTYPE DHT11   // DHT 11
#define DHTTYPE DHT22   // DHT 22  (AM2302), AM2321
//#define DHTTYPE DHT21   // DHT 21 (AM2301)

#define DEBUG_SERIAL
#define SSID_NAME         "SSID"
#define SSID_PASSWORD     "SENHA"
#define URL_PHP_SEND      "http://192.168.0.161:41062/www/sensores.php"
#define URL_PHP_RECEIVE   "http://192.168.0.161:41062/www/controle.php"

//DECLARAÇAO DE VARIAVEIS
unsigned long int tempo_atual;   // temporizadores
unsigned long int tempo_1ms;
unsigned long int tempo_100ms;
unsigned long int tempo_500ms;

unsigned long int tempo_ADJ_ms;
unsigned long int tempo_ADJ = 10000;

String str_temperatura = "";
String str_umidade = "";
String str_data_ntp = "";
String str_hora_ntp = "";

float temperatura;
float umidade;

#define LED_DEBUG 2
#define VCC_FAKE  13     // Digital pin connected to the DHT sensor
#define DHTPIN    12     // Digital pin connected to the DHT sensor

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels

#define OLED_RESET     4 // Reset pin # (or -1 if sharing Arduino reset pin)

#define SCREEN_ADDRESS 0x3C //< See datasheet for Address; 0x3D for 128x64, 0x3C for 128x32

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);
DHT dht(DHTPIN, DHTTYPE);

WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP, "a.st1.ntp.br", -10800, 60000);

void setup() {
  // put your setup code here, to run once:
  pinMode(LED_DEBUG, OUTPUT);
  pinMode(VCC_FAKE, OUTPUT);
  digitalWrite(VCC_FAKE, HIGH);
  delay(1000);

  dht.begin();

  // SSD1306_SWITCHCAPVCC = generate display voltage from 3.3V internally
  if (!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
    for (;;); // Don't proceed, loop forever
  }

#ifdef DEBUG_SERIAL
  Serial.begin(115200); //inicia a serial
  Serial.flush();       //limpa a serial
#endif

  WiFi.begin(SSID_NAME, SSID_PASSWORD);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
#ifdef DEBUG_SERIAL
    Serial.print(".");
#endif
  }

#ifdef DEBUG_SERIAL
  Serial.println(">>>>>>>> CONECTOU!!!!!!!!!");
#endif

  //Habilita o watchdog configurando o timeout para 4 segundos
  esp_task_wdt_init(4, true);
  esp_task_wdt_add(NULL);

  //Inicializaçao da temporiração usando o metodo millis()
  tempo_1ms = tempo_100ms = tempo_500ms = tempo_ADJ_ms = millis();

  timeClient.begin();
}

void loop() {
  // put your main code here, to run repeatedly:

  tempo_atual = millis();

  if ((tempo_atual - tempo_1ms) >= 1) //temporizaçao a cada 100ms
  {
    tempo_1ms = millis(); //recarrega temporizador
  }

  if ((tempo_atual - tempo_100ms) >= 100) //temporizaçao a cada 100ms
  {
    tempo_100ms = millis(); //recarrega temporizador
  }

  if ((tempo_atual - tempo_500ms) >= 500) //temporizaçao a cada 500ms
  {
    tempo_500ms = millis(); //recarrega temporizador
    esp_task_wdt_reset();   //reset watchdog timer
    digitalWrite(LED_DEBUG, !digitalRead(LED_DEBUG));
  }

  if ((tempo_atual - tempo_ADJ_ms) >= tempo_ADJ) //temporizaçao a cada xx ms
  {
    tempo_ADJ_ms = millis(); //recarrega temporizador

    timeClient.update();
    str_hora_ntp = timeClient.getFormattedTime();
    str_data_ntp = timeClient.getFormattedDate();
    temperatura = dht.readTemperature();
    umidade = dht.readHumidity();

    str_temperatura = String(temperatura, 1);
    str_umidade = String(umidade, 1);

    display.clearDisplay();
    display.setTextSize(1);           // Draw 1X-scale text
    display.setCursor(5, 5);          // Start at top-left corner
    display.setTextColor(SSD1306_WHITE);
    display.print("Temp = ");
    display.print(str_temperatura);
    display.print(" Graus");

    display.setCursor(5, 15);
    display.print("Umidade = ");
    display.print(str_umidade);
    display.print(" %");

    display.setCursor(5, 25);
    display.print("Data = ");

    str_data_ntp = str_data_ntp.substring(0, str_data_ntp.indexOf('T'));
    
    display.print(str_data_ntp.substring(8, 10) + "/"
                + str_data_ntp.substring(5, 7) + "/"
                + str_data_ntp.substring(0, 4));

    display.setCursor(5, 35);         // Start at top-left corner
    display.print("Hora = ");
    display.print(str_hora_ntp);

    display.display();

    esp32_php_send();
    esp32_php_receive();
  }
}

//-----------------------
//       funções
//-----------------------

void esp32_php_send( void )
{
  if ((WiFi.status() == WL_CONNECTED))
  {
    HTTPClient http; //Cria o objeto ou variável http do tipo cliente
#ifdef DEBUG_SERIAL
    Serial.print("[HTTP] iniciado ...\n");
#endif

    //URL que vai enviar os dados ao Servidor (página Web sensores.php)
    String minhaURL = URL_PHP_SEND;

    //***ALTERAR ESTA LINHA  ***************  ALTERAR ESTA LINHA *************************************  ALTERAR ESTA LINHA ***************  ALTERAR ESTA LINHA **************
    //Obtenha o IP da máquina com o XAMPP

    minhaURL.concat("?data=");        //concatenando dados da variavel
    minhaURL.concat(str_data_ntp);    //concatenando os dados que desejo enviar
    minhaURL.concat("&hora=");        //concatenando dados da variavel
    minhaURL.concat(str_hora_ntp);    //concatenando os dados que desejo enviar
    minhaURL.concat("&temp=");        //concatenando dados da variavel
    minhaURL.concat(str_temperatura); //concatenando os dados que desejo enviar
    minhaURL.concat("&umid=");        //concatenando dados da variavel
    minhaURL.concat(str_umidade);     //concatenando os dados que desejo enviar

    //URL utilizada: http://IP da máquina que tem o XAMPP instalado e rodando em http://192.168.0.161:41062/www/sensores.php"
    http.begin(minhaURL);

#ifdef DEBUG_SERIAL
    Serial.print("[HTTP] realizando a requisição para a página Web sensores.php ...\n");
#endif
    // começa a  conexão com o WebService e obtem o código HTTP de resposta
    int httpCode = http.GET();
    //Se o httpCode foi respondido como positivo

    if (httpCode > 0)
    {
#ifdef DEBUG_SERIAL
      Serial.printf("[HTTP] Encontrou o Servidor. \n");
      Serial.printf("[HTTP] GET... codigo recebido: %d\n", httpCode);
      //Se Existe a PÁGINA no endereço URL o código é 200
#endif

      if (httpCode == HTTP_CODE_OK)
      {
#ifdef DEBUG_SERIAL
        String resutadoDaPaginaWeb = http.getString();//armazena o resultado do Servidor
        Serial.println("===============================================");
        Serial.println(".......... Resulado Recebido da página ........");
        Serial.println(resutadoDaPaginaWeb);
        Serial.println("********* Final do Conteudo recebido **********");
#endif
      }
    }
    else
    {
#ifdef DEBUG_SERIAL
      //erro se a página não for encontrada
      Serial.printf("[HTTP] erro: %s\n", http.errorToString(httpCode).c_str());
#endif
    }
    http.end();
  }
  else
  {
#ifdef DEBUG_SERIAL
    //se não conectar no WiFI não faz nada
    Serial.printf("[HTTP] Sem conexão Wi-Fi, reinicie o ESP32 ou verifique o nome e senha da Rede WiFi \r\n");
#endif
  }
}

void esp32_php_receive( void )
{
  if ((WiFi.status() == WL_CONNECTED)) {
    HTTPClient http; //Cria o objeto ou variável http do tipo HTTPcliente

    //URL que vai enviar os dados ao Servidor (página Web controle.php)
    String minhaURL = URL_PHP_RECEIVE;

    //***ALTERAR ESTA LINHA  ***************  ALTERAR ESTA LINHA *************************************  ALTERAR ESTA LINHA ***************  ALTERAR ESTA LINHA **************
    //Obtenha o IP da máquina com o XAMPP instalado

    //URL utilizada: http://IP da máquina que tem o XAMPP instalado e rodando em http://192.168.0.161:41062/www/controle.php
    http.begin(minhaURL);
#ifdef DEBUG_SERIAL
    Serial.print("[HTTP] realizando a requisição para a página Web controle.php ...\n");
#endif

    // começa a  conexão com o WebService e obtem o código HTTP de resposta
    int httpCode = http.GET();
    //Se o httpCode foi respondido como positivo
    if (httpCode > 0) {
#ifdef DEBUG_SERIAL
      Serial.printf("[HTTP] Encontrou o Servidor. \n");
      Serial.printf("[HTTP] GET... codigo recebido: %d\n", httpCode);
#endif
      //Se Existe a PÁGINA no endereço URL o código é 200
      if (httpCode == HTTP_CODE_OK)
      {
        String resutadoDaPaginaWeb = http.getString();//armazena o resultado da página, o que veio do servidor, experimente outras URL
        tempo_ADJ = resutadoDaPaginaWeb.toInt();
#ifdef DEBUG_SERIAL
        Serial.println("===============================================");
        Serial.println(".......... Resulado Recebido da página ........");
        Serial.println(resutadoDaPaginaWeb);
        Serial.println("********* Final do Conteudo recebido **********");
#endif
      }
    }
    else
    {
#ifdef DEBUG_SERIAL
      //erro se a página não for encontrada
      Serial.printf("[HTTP] erro: %s\n", http.errorToString(httpCode).c_str());
#endif
    }
    http.end();
  }
  else
  {
#ifdef DEBUG_SERIAL
    //se não conectar no WiFI não faz nada
    Serial.printf("[HTTP] Sem conexão Wi-Fi, reinicie o ESP32 ou verifique o nome e senha da Rede WiFi \r\n");
#endif
  }
}
