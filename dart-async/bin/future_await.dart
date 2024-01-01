Future<String> firstName() async {
  return 'Haryo'; // sama dengan return Future.value(''); tapi tidak perlu karena menggunakan async
}

Future<String> lastName() async {
  return 'Darma';
}

Future<String> fullName([String name = '']) async {
  return 'Hello $name';
  // return Future.error(Exception);
}

void main() {
  say();
  tryCatch();
  // // tanpa await
  // firstName().then((firstName) => lastName().then((lastName) =>
  //     fullName('$firstName $lastName').then((value) => print(value))));
}

Future<void> say() async {
  String first = await firstName();
  String last = await lastName();
  String full = await fullName('$first $last');
  print(full);
}

Future<void> tryCatch() async {
  try {
    await fullName();
  } catch (exception) {
    print('name eror');
  } finally {
    print('done');
  }
}
