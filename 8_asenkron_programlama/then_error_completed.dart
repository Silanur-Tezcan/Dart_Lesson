import 'dart:io';

void main(List<String> args) {
  print("Anne çocuğu ekmek almaya yollar");
  Future<String> sonuc = ekmekAlmayaGit();
  sonuc
      .then((String value) {
        //todo bu sayede beklemeden işlemi gerçekleştirir ve 10 sn geçtikten sonra çıktıyı elde edersin.
        print(value);
      })
      .catchError((hata) {
        print(hata);
      })
      .whenComplete(() {
        print("ekmek alma operasyonu tamamlandı.");
      }); //todo Her türlü en sonda burası çalışır finally gibi
  print("peynir zeytin koyar");
  print("Kahvaltı sofrası hazır");
}

Future<String> ekmekAlmayaGit() {
  print("çocuk ekmek almaya çıkar");

  var myFuture = Future.delayed(Duration(seconds: 3), () {
    return "çocuk ekmekle eve girer";
    // throw Exception("bakkalda ekmek kalmamış.");
  });
  return myFuture;
}

//! geriye return eden fonksiyon halinde yazma.
