import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  final int counter;

  const MyInheritedWidget({
    Key? key,
    required Widget child,
    required this.counter,
  }) : super(key: key, child: child);

  static MyInheritedWidget of(BuildContext context) {
    final MyInheritedWidget? result =
        context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
    assert(result != null, 'No MyInheritedWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return counter != oldWidget.counter;
  }
}
