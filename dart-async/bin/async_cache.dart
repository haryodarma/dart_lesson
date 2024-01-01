import 'package:async/async.dart';

Future<String> name() {
  print('Calculate Data');
  return Future.delayed(Duration(seconds: 2), () => 'Hello World');
}

void main() async {
  final asyncCache = AsyncCache<String>(Duration(seconds: 10));
  String result = await asyncCache.fetch(() => name());
  print(result);
  String result2 = await asyncCache.fetch(() => name());
  print(result2);
  // menggunakan name yang tersimpan di memori selama 10 detik. jadi, tidak perlu memanggil object baru
  final asyncMemorizer = AsyncMemoizer<String>();
  String result3 = await asyncMemorizer.runOnce(() => name());
  print(result3);
  String result4 = await asyncMemorizer.runOnce(() => name());
  print(result4);
  // menggunakan name yang tersimpan di memori selamanya. jadi, tidak perlu memanggil object baru
}
