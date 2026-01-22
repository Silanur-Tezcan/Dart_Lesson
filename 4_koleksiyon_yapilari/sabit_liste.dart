void main(List<String> args) {
  // Sabit uzunluklu listeler
  List<int> sayilar=List.filled(10, 0);
  sayilar[0]=5;
  sayilar[1]=4;
  sayilar[9]=99;
  print(sayilar);
  List<String> sehirler=List.filled(5, "BOS");
  sehirler[0]="ankara";
  sehirler[1]="bursa";
  print(sehirler);

  for(int i=0; i<sayilar.length;i++){
    print(sayilar[i]+5);
  }
 
  for(String sehir in sehirler){
    print("o anki sehir $sehir");
  }

  for(int sayi in sayilar){
    print("o anki sayı $sayi");
  }

  // hem int hem string barındıran liste

  List karisik= List.filled(5, 0);
  karisik[0]=50;
  karisik[1]="ankara";
  karisik[2]=true;

  print(karisik);
}