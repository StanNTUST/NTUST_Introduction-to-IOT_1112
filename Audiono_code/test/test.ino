void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
}

// the loop routine runs over and over again forever:
void loop() {
  // read the input pin:
  int a = analogRead(25);
  // print out the state of the button:
  Serial.println(a);
  delay(500);        // delay in between reads for stability
}
/*


// initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
}

// the loop routine runs over and over again forever:
void loop() {
  // read the input pin:
  int a = analogRead(0);
  // print out the state of the button:
  Serial.println(a);
  delay(500);        // delay in between reads for stability
*/
