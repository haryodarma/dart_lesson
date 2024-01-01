import 'dart:io';

Iterable<int> syncNumber() sync* {
  for (int i = 1; i <= 10; i++) {
    yield i; // return nilai ke iterable
  }
}

Stream<int> asyncNumber() async* {
  for (int i = 1; i <= 10; i++) {
    yield i; // yield return nilai ke stream
  }
}

Stream<int> number(int number) async* {
  yield number;
  yield number;
}

Stream<int> doubleNumber() async* {
  for (int i = 1; i <= 10; i++) {
    yield* number(
        i); // yield* data pada number() akan diekstrak satu persatu dan dimasukkan lagi ke dalam doubleNumber()
  }
}

void main() {
  stdout.write('Iterable = ');
  syncNumber().forEach((element) => stdout.write('$element '));

  // stdout.write('Stream   = ');
  // asyncNumber().listen((element) => stdout.write('$element '));

  stdout.write('Yield*   = ');
  doubleNumber().listen((value2) => stdout.write('$value2 '));
}
