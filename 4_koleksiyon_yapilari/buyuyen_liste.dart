void main(List<String> args) {

  // listeyi growable ekleyerek sonradan istediğimiz kadar eleman eklemesi yapabiliriz
  List<int> sayilar=List.filled(5, 0, growable: true);
  List<int> sayilar2=List.empty(growable: true);
  List<int> sayilar3=[];

  sayilar3.add(15);
  sayilar.add(4);
  sayilar2.add(8);

  print(sayilar);
  print(sayilar2);
  print(sayilar3);
  
  print(sayilar3.length);
  sayilar3.add(75);
  sayilar3.add(65);
  sayilar3.add(89);
  sayilar3.add(192);
  print(sayilar3.length);
 
  // growable true yapılmadıgı sürece bomboş bir liste oluşturmuş olursun
  var sehirler= List<String>.empty(growable: true);
  sehirler.add("bursa");
  print(sehirler);

}