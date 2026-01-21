void main(List<String> args) {
  List<int> liste=[-5,16,15,-8,-65,78,43,36,-81];
  List<int> yeniListe=pozitifCiftBulma(liste);

  int toplam= yeniListToplam(yeniListe);
 print("yeni liste: $yeniListe");
 print("toplamı: $toplam");

  
  }

pozitifCiftBulma(List<int> liste){
    List<int> yeniListe=[];
 
  for(int eleman in liste){
   
    if(eleman%2==0 && eleman>=0){
      yeniListe.add(eleman);
    }
     
  }
  return yeniListe;
}

int yeniListToplam(List<int> yeniListe){
  int toplam=0;
  for(int i in yeniListe){
    toplam=i+toplam;
  }
  return toplam;
}


