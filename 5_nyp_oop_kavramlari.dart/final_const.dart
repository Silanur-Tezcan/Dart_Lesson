void main(List<String> args) {
  //final const immutable
  var isim= "emre";
  isim="altınbilek";
  print(isim);
//todo degerler değişmiyor ama run time da değiştirilemezken
  // final sayi=5;
  // sayi=10;

//todo degerler değişmiyor ama derleme anında atanır ondan sonra değiştirilir.
  // const sayi2=10;
  // sayi2=20;

  final tarih= DateTime.now();
  // const tarih2=DateTime.now();
//todo final sadece bir kere atanır ve sonradan değiştirilemez
//todo ve bu listelerin içeirklerini eşit mi diye sordugunda hayır der çünkü farklı id lerde tutuldugu için
  // final liste=[1,2];
  // liste.add(6);
  // final liste2=[1,2];
//todo sonradan ekleme yapılamaz constta bu yüzden çalışır ama sonradan hata verir
//todo bellekte fazladan yer tutmayan bir yapı elde edersin ve burda eşittir cevabını alırsın
//todo const ile bir kere üretip pek çok yerde kullanıp farklı yerlerde kullanabileceksin bu sayede daha verimli hale gelir

 const liste=[1,2,3];
 const liste2=[1,2,3]; 
  if(liste==liste2){
    print("evet eşitler");
  }else{
    print("eşit değiller");
  }

  final Ogrenci emre= const Ogrenci(5, "emre");
  final Ogrenci emre2= const Ogrenci(5, "emre");
 if(emre==emre2){
    print("evet eşitler");
  }else{
    print("eşit değiller");
  }
}
//todo ummitable sınıflar= değişmez
class Ogrenci{
  //todo burda final ve const kullanarak idsi tanımlanan isimleri değişterilemez hale getirirsin
  final int id;
  final String isim;

  const Ogrenci(this.id,this.isim);
}


