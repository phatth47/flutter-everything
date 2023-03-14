import 'dart:async';

class CounterController {
  int _counter = 0;

  final _counterStream = StreamController<int>();

  Stream<int> get counterStream => _counterStream.stream;

  void increment() {
    _counter++;
    _counterStream.sink.add(_counter);
  }

  void decrement() {
    _counter--;
    _counterStream.sink.add(_counter);
  }

  void dispose() => _counterStream.close();
}
