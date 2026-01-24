void main(List<String> args) {
  Ogrenci? emre;
  try {
     emre = Ogrenci(30);
    print(emre.yas);
  }
  catch (e) {
    print(e);
  }finally{
    print(emre!.yas);
  }
}

class AgeException implements Exception{
  String? mesaj;
  AgeException({this.mesaj ="Age Exception Oldu"});

  @override
  String toString() {
    
    return "AgeException to string çalıştı.";
  }
}

class Ogrenci {
  int yas = 0;
  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException(mesaj: "kendi mesajım AgeException");
    } else {
      this.yas = yas;
    }
  }
}
