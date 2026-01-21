void main(List<String> args) {
  // int toplam= sayilariTopla(5,8,15);
  // int toplam2=sayilariTopla(5,8,10);
    int toplam3=sayilariTopla(sayi1: 15,sayi2:5);
  print("toplam: $toplam3");
}

//todo Required parameter: Burda ise her değer mecburi girilmek zorunda.
// int sayilariTopla(int s1, int s2, int s3)=>s1+s2+s3;

//todo Optional: bu ifade ile [int s3=0] ile üçüncü sayıyı yazma zorunlulugu ortadan kalkar
//todo Böylece kişi 2 sayı toplamak isterse 2 degerini girmesi yeter s3 ü girmek zorunda değil
//todo İsteğe bağlı hale geliyor böylece.
// int sayilariTopla(int s1, int s2, [int s3 = 0])=>s1+s2+s3;

//todo Named(isimlendirilmiş): Eğer parametreler süslü parantez {} içerisindeyse
//todo değerleri main içinde çağırıp atama yaparken isimleriyle birlikte deger vermemiz gerekiyor.
//todo bu sayede istediğin sayı değerine istediğin değeri atamış oluyorsun

 int sayilariTopla({int sayi1=0 , int sayi2=0, int sayi3=0} ){
   return sayi1+sayi2+sayi3; 
   }