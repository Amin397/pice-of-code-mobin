import 'dart:async';

enum Operation{add , des}


class AvailableBloc {
  // ignore: close_sinks
  final streamController = StreamController.broadcast();

  /// The [getStream] getter would be used to expose our stream to other classes
  Stream get getStream => streamController.stream;

  List<String> counter = List<String>();

  void changeShowTrafficContent(Operation event,{text}) {
    switch(event){
      case Operation.add:
        counter.add(text);
        break;
      case Operation.des:
        counter.remove(text);
        break;
    }
    this.streamController.sink.add(this.counter);
  }
}

// ignore: non_constant_identifier_names
final AvailableBloc AvailableBlocInstance = new AvailableBloc();



enum turn{on , off}

class listBloc{
  // ignore: close_sinks
  final sss = StreamController.broadcast();

  Stream get getStream => sss.stream;

  bool turnOn = false;

  void changeTurnOnVariable(turn ttt){
    switch(ttt){
      case turn.on:
        turnOn = true;
        break;
      case turn.off:
        turnOn = false;
        break;
    }
    this.sss.sink.add(this.turnOn);
  }
}
final listBloc listBlocInstance = new listBloc();