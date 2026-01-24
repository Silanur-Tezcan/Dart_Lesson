void main(List<String> args) {
  //! foreach bir fonksiyondur ve parametre olarak da geriye deger döndürmeyen bir fonksiyon bekliyor
  List<int> sayilar=<int>[1,2,3];
  sayilar.forEach( (int element) {
    print(element);
  });
  
  sayilar.forEach(callBack);
  adiniYazdir("emre");

  kendiForEachYapim(sayilar, (sayi, index){
    print("index degeri: $index , indexteki deger $sayi");
  });
}

void kendiForEachYapim(List liste, Function callback){
  for(int i=0;i<liste.length;i++){
    // print("kendi foor each yapim ${liste[i]}");
  callback(liste[i], i);
  }
}

void adiniYazdir(String isim){
  print(isim);
}

void callBack(int deger){
  print("deger: $deger");
}