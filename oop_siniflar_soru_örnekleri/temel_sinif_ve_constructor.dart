void main(List<String> args) {
  Kitap kitapBilgileri=Kitap("suç ve ceza", "Dostowsky", 450, 1995);
  Kitap kitapBilgileri1=Kitap("Kürk Mantolu Maddona","Sabahattin Ali", 260, 1995);
  kitapBilgileri1.bilgileriGoster();
  kitapBilgileri.bilgileriGoster();

}

class Kitap{
  String? ad;
  String? yazar;
  int? sayfaSayisi;
  int? basimYili;
  Kitap(this.ad,this.yazar,this.sayfaSayisi,this.basimYili);

  void bilgileriGoster(){
    print("kitap adı: $ad, yazari: $yazar, sayfa sayısı: $sayfaSayisi ve son olarak basım yılı: $basimYili");
  }
}