import 'dart:math';

void main(List<String> args) {
  List<Ogrenci> ogrenciler = [];
  Ogrenci emre = Ogrenci(56, "ayse", true);
  var ayse = Ogrenci(12, "hasan", false);
  Ogrenci hasan = Ogrenci(3, "kemal", true);
  var kemal = Ogrenci(46, "kemal", false);

  ogrenciler.add(emre);
  ogrenciler.add(ayse);
  ogrenciler.addAll([hasan, kemal]);
  ogrenciler.addAll([Ogrenci(5, "yılmaz", false)]);
  var sonucAny = ogrenciler.any((Ogrenci ogr) => ogr.id > 3);

  //todo köşeli parantezden süslü pazanteze çevirdi ve index numaraları atadı.
  //todo ogrenciler.clear(); ise listenin içerisini temizler
  var asMapSonuc = ogrenciler.asMap();
  print(asMapSonuc);
  //todo Böyle birisi var mı varsa true döndürür
  var containsSonuc = ogrenciler.contains(emre);
  print(containsSonuc);
  //todo burda ise indexini verdiğin elemanı getirir.
  // var bulunanOgrenci=ogrenciler.elementAt(2);

  var everySonuc = ogrenciler.every((element) => element.ad.length > 0);

  print(everySonuc);

  //todo map metotu var olan yapıyı farklı bir yapı haline getirir. her bir elemanı tek tek dolaşıp değiştirir
  //todo sana verileri ham haliyle verir ve sen istersen liste ya da set haline çevirebilirsin.
  var itreableList = ogrenciler.map((e) => e.ad).toList();
  print(itreableList);

  //todo Sort metotu: verilen listeyi sıralamaya yarar. Var olan listenin yapısını değiştirir
  //todo kıyaslamak için iki tane veri istiyor
  //  ogrenciler.sort((Ogrenci ogr1, Ogrenci ogr2){
  //    if(ogr1.id<ogr2.id){
  //     return -1;
  //    }else if(ogr1.id>ogr2.id){
  //     return 1;
  //    }else return 0;
  //  });
  //todo SORT METOT STRİNG:
  ogrenciler.sort((a, b) => b.ad.compareTo(a.ad));
  print(ogrenciler);
}

class Ogrenci {
  int id = 1;
  String ad = "";
  bool aktifMi = false;

  Ogrenci(this.id, this.ad, this.aktifMi);

  @override
  String toString() {
    // TODO: implement toString
    return "id:$id, ad:$ad aktifMi:$aktifMi\n";
  }
}
