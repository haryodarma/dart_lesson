Stream<String> name() {
  return Stream.fromIterable(['Haryo', 'Darma', 'Putra']);
}

Future<void> awaitName() async {
  String names = '';
  await for (var i in name()) {
    names += i;
  }
  print(names);
}

void main() {
  awaitName();
}
