
// Guest class
class Guest {
	String name;
	String phone;

	Guest(this.name, this.phone);

	void displayGuest() {
		print("Guest Name: $name");
		print("Phone: $phone");
	}
}

// Room class
class Room {
	int roomNumber;
	String roomType;
	double price;

	Room(this.roomNumber, this.roomType, this.price);

	void displayRoom() {
		print("Room Number: $roomNumber");
		print("Room Type: $roomType");
		print("Price per Night: \$${price}");
	}
}

// Reservation class
class Reservation {
	Guest guest;
	Room room;
	int nights;

	Reservation(this.guest, this.room, this.nights);

	double calculateTotal() {
		return room.price * nights;
	}

	void displayReservation() {
		print("----- Hotel Reservation -----");

		guest.displayGuest();
		room.displayRoom();

		print("Number of Nights: $nights");
		print("Total Cost: \$${calculateTotal()}");
	}
}

void main() {
	Guest guest = Guest("Shelly", "01700000000");

	Room room = Room(205, "Deluxe", 3000);

	Reservation reservation = Reservation(
		guest,
		room,
		3,
	);

	reservation.displayReservation();
}
