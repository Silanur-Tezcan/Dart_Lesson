void main(List<String> args) {
  Matematik m1 = Matematik(2, 0);
  m1.topla();
  m1.carp();
  m1.cikar();
  m1.bol();
  m1.carp();
  m1.cikar();
  m1.bol();
  Matematik m2 = Matematik(10, 56);
  m2.cikar();
  m2.bol();
  m2.topla();
  m2.carp();
  m2.bol();
  m2.topla();
  m2.carp();

 print("Toplam yapılan işlem sayısı: ${Matematik.toplamIslemSayisi}");
  print(Matematik.PI);
  Matematik.PI = 5.0;

  Matematik.test();

 
}

class Matematik {
  int birinciSayi = 0;
  int ikinciSayi = 0;
  static int toplamIslemSayisi = 0;
  //todo static method

  static void test() {
    print("Ben static bir methodum");
  }

  //todo kutunun içinden çıkar sınıfa ait hale gelir
  static double PI = 3.14;
  Matematik(this.birinciSayi, this.ikinciSayi);

  void topla() {
    toplamIslemSayisi++;
    print("iki sayının toplamı: ${birinciSayi + ikinciSayi}");
  }

  void cikar() {
    toplamIslemSayisi++;
    print("iki sayının çıkar: ${birinciSayi - ikinciSayi}");
  }

  void carp() {
    toplamIslemSayisi++;
    print("iki sayının carp: ${birinciSayi * ikinciSayi}");
  }

  void bol() {
    toplamIslemSayisi++;
    print("bol: ${birinciSayi / ikinciSayi}");
  }
}
//! static degerler program çalıştıgı surece kalmaya devam ettiği için buyuk uygulamalarda sıkıntı çıkarır
//! bunun için butun verileri static olarak tanımlamak yorucu olur uygulama için. bunun yerine void kullan.
//! değişkenin başına static yazdıgında static hale getirmiş olursun.