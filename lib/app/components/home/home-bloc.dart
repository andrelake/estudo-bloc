import 'dart:async';

class HomeBloc {

  //state
  var _counter = 0;

  //controller
  var _streamController = StreamController<int>();

  //stream
  Stream<int> get getCount => _streamController.stream;

  //methods
  increment() {
    _counter++;
    //setstate
    _streamController.sink.add(_counter);
  }

  decrement() {
    _counter--;
    //setstate
    _streamController.sink.add(_counter);
  }

  reset() {
    _counter = 0;
    //setstate
    _streamController.sink.add(_counter);
  }
}