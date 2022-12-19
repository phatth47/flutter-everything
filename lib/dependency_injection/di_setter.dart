import 'package:flutter_everything/dependency_injection/battery.dart';

class Car {
  late Battery battery;

  /// 2. Inject the [battery] dependency through the Setter/Getter
  set setBattery(Battery battery) {
    this.battery = battery;
  }

  Battery get getBattery => battery;
}

void test() {
  final car = Car();
  car.setBattery = Battery();
}