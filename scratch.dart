import 'dart:async';

void main() {
  //
  // Initialize a "Single-Subscription" Stream controller
  //
  final StreamController ctrl = StreamController.broadcast();

  //
  // Initialize a single listener which simply prints the data
  // as soon as it receives it
  //
  final StreamSubscription subscription =
      ctrl.stream.listen((data) => print('$data => s 1'));

  //
  // We here add the data that will flow inside the stream
  //
  ctrl.sink.add('my name');
  ctrl.sink.add(1234);

  ctrl.sink.add({'a': 'element A', 'b': 'element B'});

  final StreamSubscription subscription2 =
      ctrl.stream.listen((data) => print('$data => s 2'));
  ctrl.sink.add(123.45);

  //
  // We release the StreamController
  //

  ctrl.close();

  if (ctrl.isClosed) {
    //subscription.cancel();
    //subscription2.cancel();
  }
  print(ctrl.isClosed);
}
