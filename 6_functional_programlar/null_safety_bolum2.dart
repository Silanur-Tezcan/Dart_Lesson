//! Required
//! Type Promotion
void main(List<String> args) {
  /* var toplam=ucSayiyiTopla(sayi1:10,sayi2:20,sayi3: 8);
  var toplam2=ucSayiyiTopla(sayi1: 15,sayi3: 12,sayi2: 5);
  print(toplam2); */
//todo Type Promotion: bu şekildede koşulla birlikte her türlü içinin dolacağını bildiriyorsun
/* String? mesaj;
if(DateTime.now().hour<12){
  mesaj="günaydin";
  print(mesaj);
}else{
  mesaj="iyi akşamlar";
  print(mesaj);
}
print(mesaj.length); */
// print(karakterSayisiNull(null));


Ogrenci emre=Ogrenci();
emre.setIsim("emre");
print(emre.isim);


//todo ??: bir ifadenin null olup olmadıgnı kontrol eder: nullsa diğer ifadeyi döndürüyor
int? a;
print(a ?? 10);
//todo "?." ; Bu ifade ise null sa nul yazıyor değilse normal işleme devam ediyor

 List<String?> liste=["emre",null,"hasan"];
 print(liste.first?.length ?? 2); 
}

class  Ogrenci {
  //todo late ile kullanılmadan önce doldurluacak demek
  late String isim;

  void setIsim(String i){
    this.isim=i;
  }
}


/* int karakterSayisiNull(String? metin){
  if(metin==null){
    metin="metin oluşturuldu";
    print(metin);
  }else{
    print(metin);
  }
  return metin.length;
} */

// int ucSayiyiTopla({int sayi1=0 , int sayi2=0, int sayi3=0}){
//   return sayi1+sayi2+sayi3;
// }
//todo required: bunu kullanıcı mutlaka doldurmalı demek.
int ucSayiyiTopla({required int sayi1 ,required int sayi2,required int sayi3}){
  return sayi1+sayi2+sayi3;
}