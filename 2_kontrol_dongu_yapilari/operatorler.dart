void main(List<String> args) {
  // Aritmetik Operatörler +,-,/,*,%
  int sayi1 = 10, sayi2 = 5;
  print("$sayi1 ve $sayi2 nin toplami: ${sayi1 + sayi2}");
  print("$sayi1 ve $sayi2 nin farki: ${sayi1 - sayi2}");
  print("$sayi1 ve $sayi2 nin çarpımı: ${sayi1 * sayi2}");
  print("$sayi1 ve $sayi2 nin bölümü: ${sayi1 / sayi2}");
  print("$sayi1 ve $sayi2 nin modu: ${sayi1 % sayi2}");

  int sonuc = sayi1 ~/ sayi2; // tam kısmını alıp verir
  print(sonuc);

  int testNumber = 28;
  print("$testNumber sayısı çift midir?");
  if (testNumber % 2 == 0) {
    print("çifttir");
  } else {
    print("tektir");
  }

  // Karşılaştırma operatörleri: <,>,>=,<=, !=, ==
  print(sayi1 >= sayi2);
  if (sayi1 <= sayi2) {
    print("sayi 1 küçük veya eşittir sayi 2 den");
  } else {
    print("sayi 1 büyüktür veya eşittir sayi2 den");
  }
  if (sayi1 != sayi2) {
    print("sayi 2 ile sayi 1 farklı");
  } else {
    print("sayi 2 ile sayi 1 eşittir");
  }

  // Mantıksal Operatörler: &&, ||, !
  if (sayi1 > 10 && sayi1 < 20) {
    print("şartı sağlıyor");
  } else {
    print("şartı sağlamıyor");
  }

  if (sayi1 > 10 || sayi1 < 20) {
    print("şartı sağlıyor");
  } else {
    print("şartı sağlamıyor");
  }

  // bool ogrenciMi = false;
  // if (!ogrenciMi) {
  //   print("öğrenci ");
  // } else {
  //   print("öğrenci değil");
  // }

// Arttırma Azalatma Operatörleri
sayi1=11;
sayi1=sayi1++;// önce sayı 1 e 10 u atar sonra arttırır
sayi1=++sayi1;// bunda ise önce arttırır sonra kullanır değişkeni

sayi1=sayi1--;// önce atamyı yapar sonra 1 azaltır
sayi1=--sayi1;// önce azaltır sonra atama yapar

int s1=0, s2=5;
s1=s2++;
s2=++s1;
print("son degerler $s1  $s2");

s1=s1+5;
s1+=5; //s1=s1+5
s1-=5; //s1=s1-5

// İşlem Önceliği
/*
1-) ()-> parantez içi
2-) ++ ve -- işlemleri
3-) * ve / işlemleri
4-) + ve - işlemleri
5-) = atama
6-) ++ ve -- değişkenden sonra gelenler
*/

s1=10 ;
s2=5;
double sonuc1=0;
 sonuc1=(s1*s2+4/2)+(s1++*s2)+(++s1);
 print(sonuc1);


}
