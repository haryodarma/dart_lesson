void main() {
  future('Haryo')
      .onError((error, stackTrace) => 'Terjadi Sebuah Error')
      .then((value) => print(value));

  futureMethod('Haryo')
      .then((value) => print(value))
//    .catchError((error) => print('ini eror ${error.message}'))
      .onError((error, stackTrace) => 'Terjadi Sebuah Error')
      .whenComplete(() => print('done'));

  futureTransform()
      .then((value) => value.split(' '))
      .then((value) => value.reversed)
      .then((value) => value.map((e) => e.toUpperCase()))
      .then((value) => print(value))
      .then((value) => print(110805));

  tCF('Haryo')
      .then((value) => print(value))
      .catchError((error) => print('eror with ${error.message}'))
      .whenComplete(() => 'tCF id Done');
}

// ===  Kumpulan Function Asyncronus ====================================================================

Future<String> future(String name) {
  return Future.delayed(Duration(seconds: 2), () => 'Good Morning $name');
  // return Future.error('ups');
  // return Future.value('Good Morning $name');
}

Future<String> futureMethod(String name) {
  // return Future.error('ups');
  return Future.value('Good Morning $name');

  // method didalam future
  // .then akan dieksekusi hanya ketika ketika sukses
  // .catchError untuk menangkap exception
  // .onEror error akan diubah menjadi sebuah value
  // .whenComplete ketika sukses maupun error valuenya akan di print
}

Future<String> futureTransform() {
  return Future.value('Haryo Darma Putra');
}

Future<String> tCF(String name) {
  // return Future.value('Good Morning $name');
  return Future.error(Exception('error'));
}
