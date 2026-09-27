class Car {
  Car.manual() {
    print("This car has a manual transmission.");
  }

  Car.automatic() {
    print("This car has an automatic transmission.");
  }
}

void main() {
  Car car1 = Car.manual();
  Car car2 = Car.automatic();
}