import "dart:io";
import "package:bookcasier/bookself.dart";
import "package:bookcasier/fitur.dart";

void main() {
  List<BookSelf> book = [];
  bool loop = true;
  while (loop) {
    print('===================================');
    print('||        Chose The Menu         ||');
    print('===================================');
    print('|| 1. Add A Book                 ||');
    print('|| 2. Show All Book in Inventory ||');
    print('|| 3. Search Book by Tittle      ||');
    print('|| 4. Search Book by Stock       ||');
    print('|| 5. Remove The Book            ||');
    print('|| 0. Quit From Application      ||');
    print('===================================');
    stdout.write('Menu : ');
    var menu = int.parse(stdin.readLineSync()!);
    switch (menu) {
      case 2:
        show(book);
        break;
      case 3:
        sBTittle(book);
        break;
      case 4:
        sBStock(book);
        break;
      case 1:
        add(book);
        print('You Have Added The Book');
        break;
      case 5:
        delete(book);
        break;
      case 0:
        loop = false;
        break;
    }
  }
}
