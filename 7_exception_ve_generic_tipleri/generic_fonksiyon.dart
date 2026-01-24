void main(List<String> args) {
  double ortalam=ortalamaHesapla<int>(5,10);
  print(ortalam);

  double ortalamaDouble=ortalamaHesapla<double>(1.5, 5.8);
  print(ortalamaDouble);

 
}

//todo BURDA EXTENDS DİYE KISITLAMA YAPARAK İNT İLE İNT DOUBLE İLE DOUBLE ÇALIŞTIRABİLİRİSN
double ortalamaHesapla<T extends num>(T s1,s2){
  return (s1+s2)/2;
}