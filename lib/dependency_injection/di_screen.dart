import 'package:flutter/material.dart';
import 'package:flutter_everything/dependency_injection/battery.dart';
import 'package:flutter_everything/dependency_injection/inherited_injection_widget.dart';
import 'package:flutter_everything/injection_container.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return InheritedInjectionWidget(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Screen'),
        ),
        body: const Center(
          child: BodyWidget(),
        ),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 200,
      child: ButtonWidget(),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        final battery = sl<Battery>();
        battery.charge;
      },
      child: const Text(
        'Battery',
      ),
    );
  }
}

// final battery = InheritedInjectionWidget.of(context).battery;
