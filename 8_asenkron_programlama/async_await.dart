Future<void> main(List<String> args) async {
  print("internetten kişi listesini getir");
  kisileriGetir();
  print("başka işlemler yapılıyor.");
  print("işlem bitti");

  var future1= Future.delayed(Duration(seconds: 2));
  var future2= await Future.value(1);
  // var future3= Future.error("hata ile biten future.");
  var future4= Future((){
    int toplam=0;
    for(int i=0;i<100000;i++){
      toplam+=i;
    }
    return toplam;
  });

  int toplam =await future4; 
  print(toplam);
  //MOCK: O anki senaryonun canlandırılması

}

void kisileriGetir() async {
  try{
  var kisiListesi = await kisilerListesiniGetir();
  print(kisiListesi);
  print(kisiListesi.length);
  }catch(e){
    print(e);
  }

}

Future<List<String>> kisilerListesiniGetir() {
  return Future.delayed(Duration(seconds: 2), () {
    // return ["emre", "ali", "ayse"];
    throw Exception("kişiler getirilemedi.");
  });
}



//! then , catcherror gibi yapıları daha okunaklı hale getirmeye yarar.
//! başına await koyduguu-nda future olmaktan çıkar liste döndürür.