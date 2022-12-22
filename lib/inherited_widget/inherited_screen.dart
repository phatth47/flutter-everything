import 'package:flutter/material.dart';
import 'package:flutter_everything/inherited_widget/my_inherited_widget.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print('1. Method build is called because of setState is called');
    return Scaffold(
      // Initialize MyInheritedWidget at the parent of MyCenterWidget and MyText
      body: MyInheritedWidget(
        counter: counter,
        child: const MyCenterWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyCenterWidget extends StatelessWidget {
  const MyCenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    print('2. Log build MyCenterWidget');
    return const Center(
      child: MyText(),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    // Use MyInheritedWidget.of(context) to get data from MyInheritedWidget
    // Because method of() is static, we can call it directly
    final counter = MyInheritedWidget.of(context).counter;
    print('3. Log build MyText với counter = $counter');

    // Get data from MyInheritedWidget and use it to build MyText
    return Text('Counter value: $counter');
  }
}
