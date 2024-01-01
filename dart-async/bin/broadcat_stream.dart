Stream<int> numbers() {
  return Stream.periodic(Duration(seconds: 1), (i) => i);
}

void main() {
  Stream<int> number = numbers();
  Stream<int> broad = number.asBroadcastStream();

  // The Broadcast
  broad.listen((event) => print('first broad $event'));
  broad.listen((event) => print('second broad $event'));
  // The Broadcast

  print('this is stream');
}
