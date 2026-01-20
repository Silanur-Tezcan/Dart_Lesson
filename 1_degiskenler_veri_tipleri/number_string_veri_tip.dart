

void main(List<String> args) {
  int yas=15;
  print("ahmet ${yas} yaşinda");
  String isim="ayşe";
  print("${isim} , ${yas} yaşındadır.");
  isim="veli";
  print("artık o ayşe değil ${isim} adında.");
  double d_sayi=15.16;
  print("double sayıları böyle olur: ${d_sayi}");
  
  var yil=20.56;
  print("şuan ki yıl budur ${yil}. bunu yazarken veri tanımlamak zorunda kalmadın. otomatik değeri atandı.");
  yil = 50.toDouble();
  print("dönüştürülmüş sayi= ${yil}");

  String soyad= "tezcan";
  bool ogrenciMi=false;
  print(isim+" "+soyad);

  print("$isim $soyad calismalari ve hocanın yaşı $yas ve hoca öğrenci mi : $ogrenciMi");
  print(soyad.length);
  
  var tamAd= isim + soyad;
  print(tamAd.length);
  print("adınız: $isim ve soyadınız $soyad ve bu ikisinin karakter sayisi: ${tamAd.length}");



}