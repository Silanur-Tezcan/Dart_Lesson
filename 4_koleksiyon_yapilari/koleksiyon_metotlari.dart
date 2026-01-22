void main(List<String> args) {
  var sayilar= <int>[10,125,66,9,7];
  var sayilar1= <int>[12];
  if(sayilar1.isNotEmpty){
  print(sayilar1.first);
  print(sayilar1.last);
  }
  
  sayilar1.addAll(sayilar);

  sayilar1.addAll([1,96,46,55]);
    print("listenin diğer listeyle birleştirilmiş hali $sayilar1");
  sayilar1.remove(7);
  sayilar1.removeLast();
  sayilar1.removeAt(0);
  print("listede silme işlemleri yapıldıktan sonraki hali: $sayilar1");
 // parametre verip geriye deger döndürür
 print( sayilar1.elementAt(0));
 print(sayilar1.indexOf(96));

// çekiliş tarzı oyunlarda kullanılabilir sayıları rastgele değiştiriyor
 sayilar1.shuffle();
  print(sayilar1);
print(sayilar1.contains(85));
sayilar1.clear();
print(sayilar1);
}