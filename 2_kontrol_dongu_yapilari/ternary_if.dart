void main(List<String> args) {
  int sayi1 = 5, sayi2 = 8;
  int kucukSayi = 0;
  int kucukSayi2 = 0;
  if (sayi1 < sayi2) {
    kucukSayi = sayi1;
  } else {
    kucukSayi = sayi2;
  }
  print("tanımlanan iki sayıdan kücük olanın degeri: $kucukSayi");

  // uzun if else sorgusundansa bu şekilde kısa haldede kullanabilirsin.
  sayi1 < sayi2 ? kucukSayi2 = sayi1 : kucukSayi2 = sayi2;
  print("tanımlanan iki sayıdan kücük olanın degeri: $kucukSayi2");

  kucukSayi = sayi1 < sayi2 ? sayi1 : sayi2;
  print("tanımlanan iki sayıdan kücük olanın degeri: $kucukSayi2");

  String isim="sıla",ad="Sıla";
  if(isim==ad){
    print("isimler ayni");
  }else{
    print("isimler farklı.");
  }
}
