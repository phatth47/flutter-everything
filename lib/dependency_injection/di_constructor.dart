import 'package:flutter_everything/dependency_injection/battery.dart';

class Car {
  final Battery battery;

  /// 1. Inject the [battery] dependency through the constructor
  Car(this.battery);
}

// final car = Car(Battery());