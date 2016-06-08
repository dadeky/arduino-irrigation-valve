#include "Arduino.h"

const int ledPin = 13;										//led pin
const int valveDriverPin = 4;								//the pin that opens the driver when HIGH
const int lightSensorPin = A0;								//analog input pin for light sensor, irrigation will operate during the day
const int irigPotPin = A1;									//analog input pin for potentiometer, how frequent will the valve be turned on and off

//valve
long openInterval = 6000;									//how long will the valve be open - miliseconds
int closeMultiFactor = 3;									//multiply with this number to get the closed interval
long closedInterval = openInterval * closeMultiFactor; 		//how long will the valve be closed - miliseconds
long valveCurrentMillis = 0;
long valvePreviousMillis = 0;
bool valveOpen = false;										//is valve currently open or closed, initial value is closed bool false

//led
long currentMillis = 0;
long previousMillis = 0;
int blinkInterval = 500;									//blink every ?? miliseconds
int ledState = LOW;             							// ledState used to set the LED

//daylight
int lightTreshold = 500;									//if the value above lightTreshold the valve functionality will operate

//blinks the led
void blinkLed(){
	currentMillis = millis();

	if(currentMillis - previousMillis > blinkInterval) {
	    // save the last time you blinked the LED
		previousMillis = currentMillis;
	    // if the LED is off turn it on and vice-versa:
		if (ledState == LOW)
	      ledState = HIGH;
	    else
	      ledState = LOW;
	    // set the LED with the ledState of the variable:
	    digitalWrite(ledPin, ledState);
	}
}

void countValveTime(){
	valveCurrentMillis = millis();
	if (valveOpen) {
		if(valveCurrentMillis - valvePreviousMillis > openInterval) {
			valvePreviousMillis = valveCurrentMillis;
			closeValve();
		}
		blinkLed();
	} else {
		if(valveCurrentMillis - valvePreviousMillis > closedInterval) {
			valvePreviousMillis = valveCurrentMillis;
			openValve();
		}
		digitalWrite(ledPin, LOW);
	}
}

void openValve(){
	int valveState = digitalRead(valveDriverPin);
	if (valveState == LOW) {
		digitalWrite(valveDriverPin, HIGH);
		valveOpen = true;
	}
}

void closeValve(){
	int valveState = digitalRead(valveDriverPin);
	if (valveState == HIGH) {
		digitalWrite(valveDriverPin, LOW);
		valveOpen = false;
	}
}

//initialisation
void setup()
{
	pinMode(valveDriverPin, OUTPUT);
	pinMode(ledPin, OUTPUT);
}

// The loop function is called in an endless loop
void loop()
{
	delay(10);
	int lightIntensity = analogRead(lightSensorPin);
	if (lightIntensity >= lightTreshold) {
		countValveTime();
	}else{
		closeValve();
	}

}
