void main(List<String> args) {
  cevreyiHesapla();
  alanHesapla(5, 10);
  int hacim= hacimHesapla(5,10, 15);
  print("hacim: $hacim");
}

hacimHesapla(int en, int boy, int yukseklik){
  return en*boy*yukseklik;
}

//? void yazınca return etmediğini gösteriyor. Eğer deger geri döndürüyorsa başınada String ya da İnt yazabilirsin bu da deger döndürdüğünü gösterir.
void cevreyiHesapla() {
  int en = 5, boy = 10;
  int cevre = (en + boy) * 2;
  print("eni: $en , boyu: $boy olan dikdörtgenin cevresi: $cevre");
}

void alanHesapla(int en, int boy) {
  print("en $en ve boy $boy olanın alanı: ${en * boy}");
}
