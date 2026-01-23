void main(List<String> args) {
  //! instance
  int sayi=5;
  Ogrenci emre= Ogrenci();
  emre.ad="emre altunbilek";
  emre.ogrenciNumarasi=125;
  emre.mezunMu=true;

  Ogrenci hasan= Ogrenci();
  hasan.ad="hasan yalçınkaya";
  hasan.ogrenciNumarasi=458;
  hasan.mezunMu=false;
  
  var ayse=Ogrenci();
  ayse.ad="ayse tunç";
  ayse.mezunMu=true;

  print(emre.ad);
}

class Ogrenci{
  int ogrenciNumarasi= 0;
  String ad="";
  bool mezunMu=false;

  //! Sınıfın içinde tanımlanan fonksiyonlara metod denir.
  void dersCalis(){
    print("Öğrenci ders çalışıyor.");
  }
}


//todo KISA HALİ :
/* void main() {
  List<Ogrenci> ogrenciler = [
    Ogrenci("emre altunbilek", 125, true),
    Ogrenci("hasan yalçınkaya", 458, false),
    Ogrenci("ayse tunç", 789, true),
  ];

  print(ogrenciler);
}

class Ogrenci {
  String ad;
  int ogrenciNumarasi;
  bool mezunMu;

  Ogrenci(this.ad, this.ogrenciNumarasi, this.mezunMu);

  @override
  String toString() => "Ad: $ad, Numara: $ogrenciNumarasi, Mezun mu: $mezunMu";
} */