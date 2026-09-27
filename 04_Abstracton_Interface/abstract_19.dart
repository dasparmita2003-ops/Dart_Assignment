// Abstract class
abstract class Payment {
  void makePayment();
}

// Cash payment
class CashPayment extends Payment {
  @override
  void makePayment() {
    print("Payment made using Cash.");
  }
}

// Card payment
class CardPayment extends Payment {
  @override
  void makePayment() {
    print("Payment made using Card.");
  }
}

void main() {
  CashPayment cash = CashPayment();
  CardPayment card = CardPayment();

  cash.makePayment();
  card.makePayment();
}