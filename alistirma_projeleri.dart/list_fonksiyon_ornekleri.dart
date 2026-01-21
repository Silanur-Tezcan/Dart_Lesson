import 'dart:io';

void main(List<String> args) {
  List<int> liste=[0,99,4448,554,-4565,-15,-666,-6569];
  print("en buyuk : ${maxOfBulma(liste)}");
  
  List<String> sehirler=["istanbul","ısparta","bursa","izmir"];
  print("karakter sayısı 5 den buyuk sehirler: ${karakterUzunluguHesaplama(sehirler)}");

  List<int> sayi=[1,9,8,4,7,69,895,14,77];
  print("yeni cift listesi: ${ciftMiBulma(sayi)}");
  print("eski liste: $sayi");
}

maxOfBulma(List<int> liste){
  int enbuyuk=liste[0];
  for(int eleman in liste){
    if(eleman>enbuyuk){
      enbuyuk=eleman;
    }
  }
  return enbuyuk;
}

karakterUzunluguHesaplama(List<String> sehirler){
  List<String> yenilist=[];
for(String i in sehirler){
  if(i.length>=7){
    yenilist.add(i);
  }
}
return yenilist;
}


ciftMiBulma(List<int> sayi){
  List<int> ciftListesi=[];

  for(int cift in sayi){
    if(cift%2==0){
      ciftListesi.add(cift);
    }
  }
  return ciftListesi;
}




