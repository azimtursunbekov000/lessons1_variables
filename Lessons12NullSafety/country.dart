void main() {
  // конструктор Car
  Car characteristic =
      Car(power: 350, color: "black", title: "Mercedes", price: 500000);
  characteristic.returnCharacteristic();
// конструктор Country
  Country description = Country(city: "Bishkek", climate: "Wet");
  description.printDestriction();
  description.toReturn();
// конструктор Phone
  Phone informationIphone =
      Phone(number: 996550567779, model: "Iphone", weight: 0.5);
  informationIphone.printPhoneInformation();

  Phone informationAndroid =
      Phone(number: 996550500500, model: "Android", weight: 0.9);
  informationAndroid.printPhoneInformation();
}

class Car {
  int power;
  String color;
  String title;
  double price;

  Car(
      {required this.power,
      required this.color,
      required this.title,
      required this.price});

  String returnCharacteristic() {
    return "$power \n$color \n$price \n$title";
  }
}

class Country {
  String city;
  String climate;

  Country({required this.city, required this.climate});

  printDestriction() {
    print("$city \n$climate");
  }

  String toReturn() {
    return "$city \n$climate";
  }
}

class Phone {
  int number;
  String model;
  double weight;

  Phone({required this.number, required this.model, required this.weight});

  printPhoneInformation() {
    print("number = $number \nmodel = $model \nweight = $weight кг");
  }
}
