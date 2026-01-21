import 'dart:io';
import 'dart:math';

/* Kullanıcıdan kilo (double) ve boy (double, örn: 1.75) iste.Bir fonksiyon yaz: Bu fonksiyon kiloyu ve boyu parametre olarak alsın.Fonksiyon içinde şu hesabı yap:
 $VKI = kilo / (boy * boy)$.Fonksiyon, VKI sonucuna göre sana bir metin (String) döndürsün:
 18.5'ten küçükse -> "Zayıf"18.5 ile 25 arasındaysa -> "Normal"25 ve üzeriyse -> "Kilolu" */
void main(List<String> args) {
  print("Lütfen Güncel Kilonuzu Giriniz (ör:65 ): ");
   double kilo=double.tryParse(stdin.readLineSync()!)?? 0.0;
  print("Lütfen Güncel Boyunuzu Giriniz (ör: 1.75 ): ");
   double boy=double.tryParse(stdin.readLineSync()!)?? 0.0;

   double sonuc=kitleIndeski(kilo, boy);
   print("Hesaplama sonucu: ${sonuc.toStringAsPrecision(2)}");

}
double kitleIndeski(double kilo ,double boy){
  if(boy==0) return 0.0;
   double islem=kilo/(boy*boy);
  if(islem<=18.5){
    print("Zayıf");
  }else if(18.5<islem && islem<=25){
    print("Normal");
  }else {
    print("Kilolu");
  }
  return islem;
}