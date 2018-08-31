# Embedded-Rust

Some projects for testing Rust on AVR microcontrollers.

## avr-periphery

This is the main project, which realizes a WiFi-based temperature sensor, using the follwing Hardware:
 * ESP8266 WiFi Module
 * DS18B20 Temperature Sensor

For the communication with the ESP8266, a DSL is used which allows compile-time-checked command generation:
```rust
// Sending Command AT+CWJAP="SSID","pw"
esp_cmd!(send AT+CWJAP = name:b"SSID", pw:b"pw");
```

For the communcation with the DS18B20, an interrupt-based 1-wire protocol is used.

## avrlib

Genral-purpsoe library for avr-rust, offering the following features:
 * Serial UART I/O
 * Macros for dealing with unsafe code
 * Macros for interrupt definition
 * AVR EEPROM access
 * Integer-to- ASCII Algorithm
 * Simple command parsing

## tests

Subdirectory tests contains small programs to test various features of avr-rust:
 * Buffer Overflow detection with panic
 * Detection of uninitialized variables 
 * Performance Test
 * Other Error tests
 
