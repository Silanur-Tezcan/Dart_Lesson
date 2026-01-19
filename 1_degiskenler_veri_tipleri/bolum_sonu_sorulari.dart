void main(List<String> args) {
  var birinciKenar = 3;
  var ikinciKenar = 4;
  var ucKenar = 5;
  print(
    "bir üçgenin tüm kenarlarının toplamı: ${birinciKenar + ikinciKenar + ucKenar}",
  );

  var islem = birinciKenar + ikinciKenar + ucKenar;
  print(
    "ya da bir değişkende islemi yaptırıp toplam sonucuda bulabilirsin. Sonuc: $islem",
  );

  print(
    "Birinci Kenar " +
        birinciKenar.toString() +
        " İkinci kenar: " +
        ikinciKenar.toString() +
        " Üçüncü kenar: " +
        ucKenar.toString() +
        " cevresi:" +
        islem.toString(),
  );

  print("---------------------- İKİNCİ SORU ÇÖZÜMÜ -----------------------");

  String ad = "SILA";
  int yil = 2002;
  int yas = 2026;

  print(
    "Merhaba, benim adım $ad , ben $yil yılında doğdum. ${yas - yil} yaşındayım.",
  );
}
