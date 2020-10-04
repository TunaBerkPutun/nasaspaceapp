
#include "DHT.h"
#include <LiquidCrystal.h>

LiquidCrystal lcd(12, 11, 5, 7, 3, 4);

#define DHTPIN 2     


#define DHTTYPE DHT11   
//#define DHTTYPE DHT22   // DHT 22  (AM2302)
//#define DHTTYPE DHT21   // DHT 21 (AM2301)


DHT dht(DHTPIN, DHTTYPE);

void setup() {
  Serial.begin(9600); 
  Serial.println("DHTxx test!");
 
  dht.begin();
}

void loop() {
  
  delay(2000);
  lcd.clear();
  delay(250);

  

  float h = dht.readHumidity();

  float t = dht.readTemperature();

  float f = dht.readTemperature(true);
  
 
  if (isnan(h) || isnan(t) || isnan(f)) {
    Serial.println("Failed to read from DHT sensor!");
    return;
  }

  // Compute heat index
  // Must send in temp in Fahrenheit!
  float hi = dht.computeHeatIndex(f, h);

  Serial.print("Humidity: "); 
  Serial.print(h);
  Serial.print(" %\t");
  Serial.print("Temperature: "); 
  Serial.print(t);
  Serial.print(" *C ");
  Serial.print(f);
  Serial.print(" *F\t");
  Serial.print("Heat index: ");
  Serial.print(hi);
  Serial.println(" *F");
  lcd.setCursor(1,2);
  lcd.print(t);
  lcd.print("*C  ");
  lcd.print(h);
  lcd.print("%");
  delay(500);
}
