String toCapitalized(String text) {
	if (text.isEmpty) {
		return text;
	}

	return text[0].toUpperCase() + text.substring(1);
}

void main() {
	String name = "shelly";

	print("Original: $name");
	print("Capitalized: ${toCapitalized(name)}");
}
