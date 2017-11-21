const int sensorPin= A0;
 
void setup()
{
  Serial.begin(9600);
}
 
void loop()
{
  int value = analogRead(sensorPin);
  float millivolts= (5.0 * value * 100.0)/1024.0; 
  float celsius = millivolts / 10; 
  Serial.print(celsius);
  Serial.println(" C");
  delay(1000);
}
