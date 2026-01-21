// SORU 1 : Parametre olarak bir tane int sayi ve boolean deger(isimlendirilmiş) alan fonksiyon yazınız.

// Bu fonksiyon aldıgı degere kadar olan sayıların toplamını geriye döndürsün. ciftMi isimli boolean parametre true ise çift sayıların, false ise tek sayıların toplamını geriye döndürsün.

// SORU 2 : Daire alanını hesaplayan fonskiyonu yazınız. PI sayısı opsiyonel olmalı. Eğer PI sayısı verilmediyse varsayılan olarak 3,14 alarak hesaplama yapın.
void main(List<String> args) {
  double alan = daireHesapla(4);
  print("daire alani: $alan");
  int toplam = toplamHesapla(5, ciftMi: true);
  print("toplam: $toplam");
}

// SORU 1 CEVAP:
toplamHesapla(int sayi, {bool ciftMi = true}) {
  int toplam = 0;
  for (var i = 0; i < sayi; i++) {
    if (ciftMi == true) {
      if (i % 2 == 0) {
        toplam = toplam + i;
      }
    } else {
      if (i % 2 != 0) {
        toplam = toplam + i;
      }
    }
  }

  return toplam;
}

// SORU 2 CEVAP:
daireHesapla(int r, [pi = 3.14]) {
  return pi * (r * r);
}
