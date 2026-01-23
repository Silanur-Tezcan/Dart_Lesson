void main(List<String> args) {
  Kitap kitapBilgileri=Kitap("suç ve ceza", "Dostowsky", 450, 1995);
  Kitap kitapBilgileri1=Kitap("Kürk Mantolu Maddona","Sabahattin Ali", 260, 1995);
  Kitap kitapBilgileri2=Kitap.sayfaSayisiz("suç ve ceza", "Dostowsky", -450, 1995);
  kitapBilgileri1.bilgileriGoster();
  kitapBilgileri.bilgileriGoster();
  kitapBilgileri2.bilgileriGoster();

  EKitap ekitap=EKitap("ferhat ile aslı", "anonim", 1562, 256, 2.5, "pdf");
  ekitap.bilgileriGoster();

}

class Kitap{
  String? ad;
  String? yazar;
  int? _sayfaSayisi;
  int? basimYili;
  
  Kitap(this.ad,this.yazar,this.basimYili,this._sayfaSayisi);
  
  Kitap.sayfaSayisiz(this.ad,this.yazar,this._sayfaSayisi,this.basimYili){
    if(this._sayfaSayisi!<0 ){
      this._sayfaSayisi=1;
    }
  }
  void bilgileriGoster(){
    print("kitap adı: $ad, yazari: $yazar, sayfa sayısı: $_sayfaSayisi ve son olarak basım yılı: $basimYili");
  }
}

class EKitap extends Kitap{
  double? dosyaBoyutu;
  String? format;

  EKitap(super.ad, super.yazar, super.basimYili, super.sayfaSayisi,this.dosyaBoyutu,this.format);
  @override
  void bilgileriGoster() {
    super.bilgileriGoster();
    print("EK BİLGİLER -> Dosya Boyutu: $dosyaBoyutu , ve formatı: $format");
  }


}