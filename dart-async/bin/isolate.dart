import 'dart:io';
import 'dart:isolate';

// Future<void> hello(String name) async {
//   sleep(Duration(seconds: 2));
//   print('Block');
//   Isolate.exit();
// }

// void main() {
//   Isolate.spawn(hello, 'haryo');
//   print('done');
// }
class Parameter {
  String name;
  SendPort sendPort;
  Parameter(this.name, this.sendPort);
}

Future<void> numbers(Parameter parameter) async {
  for (int i = 1; i <= 10; i++) {
    sleep(Duration(seconds: 1));
    parameter.sendPort.send('${parameter.name} ke $i');
  }
  Isolate.exit();
}

void main() {
  final recheive = ReceivePort();
  Isolate.spawn(
      numbers,
      Parameter(
          'Haryo',
          recheive
              .sendPort)); // data akan di simpan di recheive menggunakan sendPort
  recheive.take(5).listen((message) => print(message));
  print('Done');
}
