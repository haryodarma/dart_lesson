import 'dart:async';

void main() {
  // akan dieksekusi setelah 1 detik dan satu kali
  Timer(Duration(seconds: 1), () {
    print('Selamat Pagi');
  });

  // akan dieksekusi setiap 1 detik dan akan berhenti ketika sudah dieksekusi 5 kali
  Timer.periodic(Duration(seconds: 1), (timer) {
    print('ily');
    if (timer.tick == 5) {
      timer.cancel();
    }
  });
}
