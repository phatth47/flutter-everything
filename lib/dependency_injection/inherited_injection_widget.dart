import 'package:flutter/material.dart';
import 'package:flutter_everything/dependency_injection/battery.dart';

class InheritedInjectionWidget extends InheritedWidget {
  final Battery _battery = Battery();

  InheritedInjectionWidget({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  static InheritedInjectionWidget of(BuildContext context) {
    final InheritedInjectionWidget? result =
        context.dependOnInheritedWidgetOfExactType<InheritedInjectionWidget>();
    assert(result != null, 'No InheritedInjectionWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(InheritedInjectionWidget oldWidget) {
    return false;
  }

  Battery get battery => _battery;
}
