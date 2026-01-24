void main(List<String> args) {

  Map<String, int> notlar = {"ali": 95, "sila": 100, "ahmet": 15, "veli": 49};

 
  int? sonuc = notuSorgula(notlar, "sila");
  int? sonuc2 = notuSorgula(notlar, "mehmet");

  // ?? Operatörü: Eğer değer null ise sağdaki mesajı yazdır
  print("Sıla'nın Notu: ${sonuc ?? "Öğrenci bulunamadı"}");
  print("Mehmet'in Notu: ${sonuc2 ?? "Öğrenci bulunamadı"}");
}

int? notuSorgula(Map<String, int> tumNotlar, String isim) {

  return tumNotlar[isim];
}