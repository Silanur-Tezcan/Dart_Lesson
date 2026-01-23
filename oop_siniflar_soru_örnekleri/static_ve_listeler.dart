void main(List<String> args) {
  Kitap kitapBilgileri = Kitap("suç ve ceza", "Dostowsky", 1995, 450);
  Kitap kitapBilgileri1 = Kitap(
    "Kürk Mantolu Maddona",
    "Sabahattin Ali",
    1995,
    260,
  );
  Kitap kitapBilgileri2 = Kitap.sayfaSayisiz(
    "suç ve ceza",
    "Dostowsky",
    1995,
    -450,
  );
  
  EKitap ekitap = EKitap("ferhat ile aslı", "anonim", 1562, 256, 2.5, "pdf");
  kitapBilgileri1.bilgileriGoster();
  kitapBilgileri.bilgileriGoster();
  kitapBilgileri2.bilgileriGoster();
  ekitap.bilgileriGoster();

  List<Kitap> kutuphane = [];
  kutuphane.add(kitapBilgileri);
  kutuphane.add(ekitap);
  kutuphane.add(kitapBilgileri1);
  print("-----KÜTÜPHANE BİLGİLERİ-----");
  for (Kitap i in kutuphane) {
    i.fiyatHesapla();
    i.bilgileriGoster();
    print("-----------------------");
  }
  
  print("toplam kitap sayisi:${Kitap.kitapSayisi}");
}

class Kitap extends Urun {
  String? ad;
  String? yazar;
  int? _sayfaSayisi;
  int? basimYili;
  
  static int kitapSayisi = 0;

  Kitap(this.ad, this.yazar, this.basimYili, this._sayfaSayisi){kitapSayisi++;}

  Kitap.sayfaSayisiz(this.ad, this.yazar, this._sayfaSayisi, this.basimYili) {
    kitapSayisi++;
    if (this._sayfaSayisi! < 0) {
      this._sayfaSayisi = 1;
    }
  }
  void bilgileriGoster() {
    print(
      "kitap adı: $ad, yazari: $yazar, sayfa sayısı: $_sayfaSayisi ve son olarak basım yılı: $basimYili",
    );
  }

  @override
  void fiyatHesapla() {
    print("kitap fiyatı 100 TL");
  }
}

class EKitap extends Kitap {
  double? dosyaBoyutu;
  String? format;

  EKitap(
    super.ad,
    super.yazar,
    super.basimYili,
    super.sayfaSayisi,
    this.dosyaBoyutu,
    this.format,
  );
  @override
  void bilgileriGoster() {
    super.bilgileriGoster();
    print("EK BİLGİLER -> Dosya Boyutu: $dosyaBoyutu , ve formatı: $format");
  }
}

abstract class Urun {
  void fiyatHesapla();
}
