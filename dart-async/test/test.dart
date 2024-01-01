import 'package:test/test.dart';

Future<String> aku() async {
  return 'Haryo Darma';
}

void main() {
  test('Future Test', () async {
    String namaku = await aku();
    expect(namaku, 'Haryo Darma');
  });
  test('Future Test', () {
    Future<String> namaku = aku();
    expect(namaku, completion(equals('Haryo Darma')));
  });

  test('Stream test', () {
    final stream = Stream.periodic(Duration(seconds: 2), (i) => i).take(5);
    expect(
        stream,
        emitsInOrder(
            [emits(0), emits(1), emits(2), emits(3), emits(5), emitsDone]));
  });
}
