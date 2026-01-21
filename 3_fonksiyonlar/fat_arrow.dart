void main(List<String> args) {
  print("verilen sayinin karesi: ${karesiniHesapla(5)}");
  print("girilen sayıların buyuk olanı: ${maxOlaniBul(6, 8)}");
}
/* int karesiniHesapla(int sayi){
   return sayi*sayi;
} */

// ? bu sayede tek satıra düşürebiliriz fonksiyonu ve üstteki işlemi daha basit hale getiriyoruz.
int karesiniHesapla(int sayi)=> sayi*sayi;

/* int maxOlaniBul(int s1, int s2){
  if(s1<s2){
    return s2;
  }else{
    return s1;
  }
} */

// todo Burda ise hem fonksiyonun kısaltılmış halini hemde if-else in kısa halini kullandık.
int maxOlaniBul(int s1,int s2)=> (s1<s2)? s2: s1;