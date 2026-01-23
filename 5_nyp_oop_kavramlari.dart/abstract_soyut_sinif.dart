void main(List<String> args) {
  //! İç detayları gizleyerek sadece işlevleri göstermeye denir.
  VeriTabani db = OracleDb();
  db.userDelete();
  db.userSave();
}

void testDb(VeriTabani veritabani) {
  veritabani.veritabaniKontrol();
}

//todo ÖR: Bir proje geliştirileceğinde veritabanını sen değilde bir başkas yaptıgında hangi veritabanını kullanacağını
//todo bilemediğin zaman abstract ile method içerisini dolduramayacğında soyutlaştırırsın.
abstract class VeriTabani {
  void userSave();
  void userDelete();
  void veritabaniKontrol();
}

//todo Burda sana en başta ust sınıfta içleri doldurulmamış fonksiyon/nesne var bunların içini burda doldurmalısın diyor.
//todo doldurmak için ampule basıp override yaptıgında kendisi dolduruyor.
class FireBase extends VeriTabani {
  @override
  void userDelete() {
    print("FireBase db user delete çalıştı.");
  }

  @override
  void userSave() {
    print("FireBase db user save çalıştı.");
  }

  @override
  void veritabaniKontrol() {
    print("Kullanılan veritabani FİREBASE.");
  }
}

//todo Eğer daha sonra farklı bir veritabanına geçerlerse tek yapılması gereken oracle db bilgilerini tanımlaması gerekir.
class OracleDb extends VeriTabani {

  @override
  void userDelete() {
    print("Oracle db user delete çalıştı.");
  }

  @override
  void userSave() {
    print("Oracle db user save çalıştı.");
  }

  @override
  void veritabaniKontrol() {
    print("Kullanılan veritabani ORACLE.");
  }
}



//! Veritabani soyutsa oracle ve firebase onun somut halidir. bilmediğin ve başkasının dolduracağı kısımlar varsa orda soyutlama yaparak daha sonradan bilgilerin eklenmesini kolaylaştırırsın.

