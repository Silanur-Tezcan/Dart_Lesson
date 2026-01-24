int? nullOlabilirAmaDegil = 5;
void main(List<String> args) {
  //! dart dilinde butun değişkenler non-nullabledır. Nullable, non-nullable, Assertion operator
  //! Nullable olan bir degeri non-nullable bir değişkene atayamazsın
  /*   int? a;
  a=null;
  a=2;
  print(a+2); */

  // List<String> isimler=["emre","hasan"];
  //todo Anlam farklılıgı 1-) List<String>? şeklinde yaparsan renkler isimli liste null olabilir
  //todo 2-) List<String ?> bu liste mutlaka olmalı null olamaz anlamına gelir. ve bu listede string degerler tutuluyor bunlardan hepsi ya da bazısı null olabilir anlamına geliyor
  //todo kısa türün önündeyse sadece atanan degerlerin null olup olmicağını kapsarken listinde dışındaysa soru işareti o butun listenin null olabileceği anlamına geliyor
  //todo eger <string?>? şeklinde yaparsanda her iki anlamıda kapsar
  /*  List<String>? renkler=null;
  print(renkler);
  List<String ?> markalar=[];
  List<String?>? test; */
  //todo Nullable olan bir degeri non-nullable bir değişkene atayamazsın
  //todo bunu ise asretion operator kullanarak çözebilirisin
  //todo ! bu işaret null olmayacağı anlamına getiriyor
  int a = nullOlabilirAmaDegil!;
  print(a + 2);

  List<int?> nullDegerdeOlanListe = [1, null, 3];
  int b = nullDegerdeOlanListe.first!;
  int c = nullDondurebilenAmaDondurmeyecekFonk()!.abs();
  print(c);
}

int? nullDondurebilenAmaDondurmeyecekFonk() {
  return -5;
}
