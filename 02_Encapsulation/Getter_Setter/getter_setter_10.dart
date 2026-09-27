class BankAccount {
	double _balance = 0; // Private variable

	// Setter
	set balance(double amount) {
		if (amount >= 0) {
			_balance = amount;
		} else {
			print("Balance cannot be negative.");
		}
	}

	// Getter
	double get balance {
		return _balance;
	}
}

void main() {
	BankAccount account = BankAccount();

	// Set valid balance
	account.balance = 5000;
	print("Balance: ${account.balance}");

	// Try to set negative balance
	account.balance = -1000;

	// Display balance again
	print("Final Balance: ${account.balance}");
}
