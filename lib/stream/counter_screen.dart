import 'package:flutter/material.dart';
import 'counter_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final _counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counterr'),
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: _counterController.counterStream,
          initialData: 0,
          builder: (context, snapshot) {
            return Text(
              '${snapshot.data}',
              style: Theme.of(context).textTheme.headline4,
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _counterController.increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _counterController.decrement,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _counterController.dispose();
    super.dispose();
  }
}
