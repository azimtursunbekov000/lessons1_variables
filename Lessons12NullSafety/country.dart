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
  Phone information = Phone(number: 996550567779, model: "Iphone", weight: 2.5);
  information.printPhoneInformation();
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

  returnCharacteristic() {
    return Car(power: power, color: color, title: title, price: price);
  }
}

class Country {
  String city;
  String climate;

  Country({required this.city, required this.climate});

  printDestriction() {
    print("$city \n$climate");
  }

  toReturn() {
    return printDestriction();
  }
}

class Phone {
  int number;
  String model;
  double weight;

  Phone({required this.number, required this.model, required this.weight});

  printPhoneInformation() {
    print("number = $number \nmodel = $model \nweight = $weight");
  }
}








// oid main() {
//   Suv suv1 = Suv(
//     manufacturer: 'Toyota',
//     year: 2003,
//     driveUnit: 4,
//   );
//   Car myCar = Car(
//     manufacturer: 'manufacturer',
//     year: 2022,
//   );

//   Car car2 = Car(
//     manufacturer: 'manufacturer',
//     year: 2022,
//     speed: 200,
//   );

//   myCar.printSpeed();
//   car2.printSpeed();
//   suv1.printDriveUnit();
// }

// class Car {
//   String manufacturer;
//   int year;
//   double speed;

//   Car({
//     required this.manufacturer,
//     required this.year,
//     this.speed = 100,
//   });

//   startCar() {
//     print('car started');
//   }

//   printSpeed() {
//     print(speed);
//   }
// }

// class Suv extends Car {
//   int driveUnit;

//   Suv({
//     required super.manufacturer,
//     required super.year,
//     required this.driveUnit,
//     super.speed,
//   });

//   printDriveUnit() {
//     print('$driveUnit WD');
//   }

//   @override
//   startCar() {
    
    
//   }
