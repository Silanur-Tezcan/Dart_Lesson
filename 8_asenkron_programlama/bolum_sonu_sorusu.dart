Future<void> main(List<String> args) async {
  // Map<String,dynamic>  kisiMap= await kisiBilgileriniGetir(5);
 
  // String username=kisiMap["username"];
  // List<String> kursListesi= await kisininKursListesiniGetir(username);
  // print(kursListesi);

  kisiBilgileriniGetir(5).then((value) {
    var kisiBilgileri=value;
    var username= kisiBilgileri["username"];
    kisininKursListesiniGetir(username).then((kursListesi){
      print(kursListesi);
    });
  });
  
}

Future<List<String>> kisininKursListesiniGetir(String username) async {
    print("kullanıcı adı degeri $username olarak gelen kullanıcının kurs listesi getiriliyor:");
  return Future.delayed(Duration(seconds: 2),(){
    return ["dart","flutter","js"];
  });
}

Future<Map<String, dynamic>> kisiBilgileriniGetir(int id) async {
  print("id degeri $id olarak gelen kullanıcının bilgileri getiriliyor:");
  return Future.delayed(Duration(seconds: 3),(){
     return {"username":"emre", "id":5};
  });
}

