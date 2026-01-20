

import 'dart:io';

void main(List<String> args) {
  print("Adınızı giriniz; ");
  var ad= stdin.readLineSync();
  
 
  print("yaşınızı giriniz: ");
  var yas= int.tryParse(stdin.readLineSync()!);
  print("girdiğiniz yas değeri: $yas");
  print("Girdiğiniz ad degeri: $ad ve yas degeri: $yas");
}