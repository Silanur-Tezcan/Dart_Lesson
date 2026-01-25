import 'dart:io';

void main(List<String> args) {
  print("Anne çocuğu ekmek almaya yollar");
  ekmekAlmayaGit()
  .then((value) => print(value))
  .catchError((hata)=>print(hata))
  .whenComplete(()=>print("işlem sonlandı."));
  print("peynir zeytin koyar");
  print("Kahvaltı sofrası hazır");
}

Future<String> ekmekAlmayaGit() {
  print("çocuk ekmek almaya çıkar");

  return Future<String>.delayed(Duration(seconds: 3), () {
    return "çocuk ekmekle eve girer";
  });
}
