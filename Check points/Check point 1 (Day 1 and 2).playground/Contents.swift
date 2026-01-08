import Cocoa

//**Checkpoint 1**
//Create a thermostat using string interpolation. Convert celsius to Fahrenheit.

//Step 1 Declare our Temperature in celsius
let Celsius = 27.0

// Step 2 We can now take our Temperature in Celsius and and calculate it to Fahrenheit (Celsius * 9 / 5 + 32)
let Fahrenheit = ukTemp * 9 / 5 + 32

//Step 3 This is redundant but i like it this way. Make our Fahrenheit a constance so we can easily call it in our message using string interpolation.
let usTemp = Fahrenheit
let ukTemp = Celsius

//Create a message so we can easily print our message no mater what our Temperature changes to using string interpolation.
//You can use Option+Shift+8 to get a degrees sign
let message = "The weather in Celsius is \(ukTemp)° and in Fahrenheit it is \(usTemp)°"

print(message)
