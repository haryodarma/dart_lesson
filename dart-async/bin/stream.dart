import 'dart:async';

Stream<String> stream() {
  return Stream.periodic(Duration(seconds: 2), (i) {
    if (i % 2 == 0) {
      return '$i genap';
    } else {
      return '$i ganjil';
    }
  });
}

void main() {
  Stream<String> flow = stream();
  StreamSubscription<String> lstn = flow.listen((data) {
    print(data); // tidak dipanggil karena dibawah sudah ada onData
  });
  lstn.onData((data) => print('onData $data'));
  lstn.onDone(() => print('Done'));

  print('done');
}

// Method Stream Subscription
// onData((){})
// onError((){})
// onDone((){})
// cancel()
// pause()
// resume()

// Transform Filter Method (cek ppt)
// Transform Method (ce ppt)
// Transform fold and reduce
