void main() {
  List<int> liste=[45,78,65,52,23,05];
  int toplam=toplamHesaplama(liste);
  print("listenin toplamı: $toplam");
  
  double ort=toplam/liste.length;
  print("Listenin toplamının ortalaması: $ort");
}
toplamHesaplama(List<int> liste){
  int toplam=0;
  for (int i in liste) {
    toplam=i+toplam;
    
  }
  return toplam;
}

//? Fonksiyon ile yapılmış hali;
/* ortHesaplama(List<int> liste){
  int toplam=toplamHesaplama(liste);
  return toplam/liste.length;
}
 */