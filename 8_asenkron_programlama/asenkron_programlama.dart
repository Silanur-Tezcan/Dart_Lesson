import 'dart:io';

void main(List<String> args) {
  //! Uzun süren işlemler farklı bir yerde yer alır. Var olan işlemi yapar uzun sürecek işlemide farklı bir yerde tutar.
  print("Anne çocuğu ekmek almaya yollar");
  ekmekAlmayaGit();
  print("peynir zeytin koyar");
  print("Kahvaltı sofrası hazır");
}

void ekmekAlmayaGit() {
  print("çocuk ekmek almaya çıkar");
  // sleep(Duration(seconds: 10));
  Future.delayed(Duration(seconds: 10), () {
    print("çocuk ekmekle eve girer");
  });
}

//! single threed:
//! genelde veritabanında kullanılıyor. veritabanı ya da internetten veri çekerken.