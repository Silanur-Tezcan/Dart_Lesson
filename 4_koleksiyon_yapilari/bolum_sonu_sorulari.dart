import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // SORU 1: 0-100'e kadar rastgele sayı olusturup 100 elemanlı bir listede saklayın.
  //(ipucu Random.().nextInt(101) rastegele sayı olusturmanızı sağlar.)
  // Random random = Random();
  // List<int> numbers = List.generate(100, (index) => random.nextInt(101));
  // print(numbers);
//todo Diğer Çözümü:
 List<int> sayilar=List<int>.filled(100,0);
 for(int i=0;i<sayilar.length;i++){
  sayilar[i]=Random().nextInt(101);
 }
 var tekrarlanmayan=Set.from(sayilar);
 print(tekrarlanmayan.length);
 print(tekrarlanmayan);
  // SORU 2 : Keyleri string, degerleri dynamic olan bir map olusturun. Bu map yapısında
  // bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadıgı bilgisini tutun ve ekrana yazdırın.
  Map<String, dynamic> bilgiler = {
    "İslemci Cekirdek Sayisi": 56,
    "Ram Miktari": 32,
    "ssd": false,
  };
  print(bilgiler);

  // SORU 3 : Kullanıcıdan aldıgnız integer pozitif sayıları bir listede tutun, kullanıcı -1 degerini
  // girdiğinde girilen sayıların ortalamasını yazdırın.
  var liste = sayilariAl();
  var toplam = 0;
  for (int eleman in liste) {
    toplam = toplam + eleman;
  }
  var ortalama = toplam / liste.length;
  print("girilen liste: $liste");
  print("listenin ortalaması: $ortalama");

  // SORU 4 : Adınızı, soyadınızı ve sevdiğiniz renkleri tutan bir map yapısı oluşturun. Sevdiğiniz
  // renkler listre şeklinde olmalı. Aynı yapıda bir map daha oluşturup, bu map'te yakın arkadaşınızın
  // bilgilerini tutun. Sonrasında bu iki yapıyı tek bir liste halinde ekrana yazdırın.
  Map<String, dynamic> benimBilgilerim = {
    "ad": "sıla",
    "soyad": "tezcan",
    "renkler": ["mavi", "siyah", "kırmızı"],
  };
  Map<String, dynamic> digerBilgiler = {
    "adı": "ecem",
    "soyadı": "çavuş",
    "renkleri": ["mor", "pembe", "beyaz"],
  };
  // print("benim listem: $benimBilgilerim , ecemin bilgileri: $digerBilgiler");
  // var sonmap = <String,dynamic>{...benimBilgilerim , ...digerBilgiler};
  var liste1=[];
  liste1.add(benimBilgilerim);
  liste1.add(digerBilgiler);
  print("iki listenin birleştirilmiş hali: $liste1");
  print(liste1[0]['renkler'][0]);
  //! Burda önemli bir nokta var. Listelerdeki isimler keyler aynıysa bu şekilde birleştiremiyorsun 
  //! Hata veriyor ve en son olan listeyi yazıyor aynı keyler altında yazmak istiyorsan bu şekilde yaz:
  /* var sonmap = {
  "ad": "${benimBilgilerim["ad"]} & ${digerBilgiler["ad"]}",
  "soyad": "${benimBilgilerim["soyad"]} & ${digerBilgiler["soyad"]}",
  "renkler": [
    ...benimBilgilerim["renkler"],
    ...digerBilgiler["renkler"]
  ]
};  */
  



  // SORU 5: 0-100'e kadar rastgele sayı oluşturup 1000 elemanlı bir listede saklayın.
  // Bir map yapısında bu listede tekrar eden sayıyı ve kaç kere tekrar ettiğini saklayın.
  // birden fazla tekrar eden elemanları ekrana yazdırın
  // ÖR: 88 sayısı 5 kere üretilmiştir
  //     96 sayısı 4 kere üretilmiştir.

 List<int> sayiToplulugu=List.filled(100,0);
 for(int eleman=0;eleman<100;eleman++){
  sayiToplulugu[eleman]=Random().nextInt(101);
 }
Map<int,int> tekrarMap={};
for(int sayi in sayiToplulugu){
  if(tekrarMap.containsKey(sayi)){
    var tekrarSayisi=tekrarMap[sayi];
    tekrarSayisi= tekrarSayisi!+1;
    tekrarMap[sayi]=tekrarSayisi;

  }else{
    tekrarMap[sayi]=1;
  }
}
print(sayiToplulugu);
for(var entry in tekrarMap.entries){
  if(entry.value>1){
    print(entry);
  }
}


}

List<int> sayilariAl() {
  List<int> liste = [];
  while (true) {
    stdout.write("pozitif sayi giriniz (-1 ile bitir): ");
    var input = stdin.readLineSync();
    var deger = int.tryParse(input ?? "");
    if (deger == null) continue;
    if (deger == -1) break;
    liste.add(deger);
  }
  return liste;
}
