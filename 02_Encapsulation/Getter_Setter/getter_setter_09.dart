class Temperature {
	double _temp = 0; // Private variable

	// Setter to set temperature in Celsius
	set temp(double celsius) {
		_temp = celsius;
	}

	// Getter to return temperature in Fahrenheit
	double get temp {
		return (_temp * 9 / 5) + 32;
	}
}

void main() {
	Temperature temperature = Temperature();

	// Set Celsius temperature
	temperature.temp = 25;

	// Get Fahrenheit temperature
	print("Temperature in Celsius: 25°C");
	print("Temperature in Fahrenheit: ${temperature.temp}°F");
}
