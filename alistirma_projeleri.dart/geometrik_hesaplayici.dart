//Kullanıcıdan bir dikdörtgenin kısa ve uzun kenarını alıp,
// hem alanını hem de çevresini hesaplayan iki ayrı fonksiyon yazın.
import 'dart:io';

void main(List<String> args) {
  print("kısa kenar girim: ");
  var kisaKenar=int.tryParse(stdin.readLineSync()!)?? 0;
    print("uzun kenar girim: ");
  var uzunKenar=int.tryParse(stdin.readLineSync()!)?? 0;
   int  alan=alanHesaplama(uzunKenar, kisaKenar);
  print("dikdörtgenin alani: $alan");

print("------------------------------- İKİNCİ KISIM ---------------");

   double cevre=cevreHesaplama(uzunKenar.toDouble(), kisaKenar.toDouble());
  print("dikdörtgenin cevresi: $cevre");

}
int alanHesaplama(int kisa, int uzun){
  return kisa*uzun;
}

double cevreHesaplama(double kisa, double uzun)=> 2*(kisa+uzun);