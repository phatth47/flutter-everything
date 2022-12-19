abstract class ICar {
  void get charge;
}

class Car implements ICar {
  @override
  void get charge => print('Charging...');
}
