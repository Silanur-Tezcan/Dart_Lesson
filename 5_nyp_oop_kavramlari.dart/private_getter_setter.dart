import 'dart:math';

import 'uyelik_islemleri.dart';
// nesne yönelimi encapsulation:bir nesnenin verileri, sadece nesnenin kendisi tarafından erişilebilir hale getirilir. 
void main(List<String> args) {
  UyelikIslemleri islemler= UyelikIslemleri();
  if(islemler.uyeSil()){
    print("silindi");
  }else{
    print("silinmedi");
  }
  
  islemler.kullaniciAdiniGuncelle="emre";

  print(islemler.kullaniciAdiniGoster);

  islemler.kullaniciAdiniGuncelle="sıla";
  print(islemler.kullaniciAdiniGoster);
}



//? ctrl+. ile import edebiliyorsun