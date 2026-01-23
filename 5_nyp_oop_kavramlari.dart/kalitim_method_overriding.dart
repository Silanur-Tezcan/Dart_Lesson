void main(List<String> args) {
  User user = User();
  NormalUser normalUser = NormalUser();
  normalUser.davetEt();
  normalUser.girisYap();

  user.girisYap();

  ReadOnly readOnly = ReadOnly();
  readOnly.davetEt();
  readOnly.makaleOku();
}

//! oluşturulan her bir sınıf Object sınıfından türetilmiştir.
//! bu yüzden bir sınıf oluşturup onun nesnelerine baktıgımızda farklı yapılarıda görebilirisin.
class User {
  String mail = "";
  String password = "";

  void girisYap() {
    print("User giris yaptı.");
  }
}

class NormalUser extends User {
  void davetEt() {}
  @override
  void girisYap() {
    // TODO: implement girisYap. alt sınıf üst sınıfın yapılarına erişebilir.
    //todo miras aldıgı sınıf void olması onunda void olacağı anlamına gelmiyor string ya da int olabilir.
    // super.girisYap(); //eğer alt kısımda print olarak bir çıktı vermeseydik bu kısım sayesinde üst sınıftan aldıgımız void kısmı çalıştıralacaktı.
    print("normal user giriş yaptı.");
  }
}

class AdminUser extends User {
  @override
  void girisYap() {
    print("Admin user giriş yaptı");
  }

  void toplamKullaniciSayisiniHesapla() {}
}

class ReadOnly extends NormalUser {
  @override
  void girisYap() {
    print("read only giriş yaptı");
  }

  void makaleOku() {}
}

//! genelden özele doğru bir geçiş olur kalıtımda üst sınıf alt sınıf olarak ayrılır.
//! dart dilinde bir sınıf sadece bir tane üst sınıfa sahip olabilir
//! bu sayede farklı yapıları tek bir çatı altında tanımlayabiliyoruz.
