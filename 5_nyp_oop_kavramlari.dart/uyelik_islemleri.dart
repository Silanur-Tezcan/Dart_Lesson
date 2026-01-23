import 'dart:math';

class UyelikIslemleri {
  String _kullaniciAdi = "";

  void set kullaniciAdiniGuncelle(String ad) {
    // ad uzunlugu 0 dan buyuk mu
    // veritabanında var mi gibi kontroller yapılabilir.
    _kullaniciAdi = ad;
  }

  String get kullaniciAdiniGoster{
    return "kullanıcı adı: $_kullaniciAdi";
  }

  bool uyeSil() {
    if (_uyeVarMi()) {
      print("Üye var ve silindi");
      return true;
    } else {
      print("üye olmadıgı için silinmedi");
      return false;
    }
  }

  bool _uyeVarMi() {
    if (Random().nextBool()) {
      return true;
    } else {
      return false;
    }
  }
}

//? _ad ile kullanıcının o yapıları görmesini engelleyebilirisin.
//? set metot ile deger atama
//? get metot ile de deger okuma işlemleri yaptırırsın.
