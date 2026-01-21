import 'dart:io';

void main(List<String> args) {
  //! ?? 0 kısmı işlemlerde boş bırakılırsa hata vereceği için bu işlemle boş bırakılırsa 0 degeri verileceği söyleniyor.
  // 1-) Kullanıcıdan aldıgınız 3 sayının ortlamasını bulan uygulama
  // print("Birinci sayıyı giriniz: ");
  // var  sayi1=int.tryParse(stdin.readLineSync()!) ?? 0;
  //  print("İkinci sayıyı giriniz: ");
  // var  sayi2=int.tryParse(stdin.readLineSync()!) ?? 0;
  //  print("Üçüncü sayıyı giriniz: ");
  // var  sayi3=int.tryParse(stdin.readLineSync()!) ?? 0;
  // print("sayilariniz: sayi1: $sayi1, sayi2: $sayi2, sayi3: $sayi3");
  // var ort=(sayi1+sayi2+sayi3)/3;
  // print("3 Sayının ortalaması : $ort");

print("-------------------------------------- 2. SORU ----------------------");
  // 2-) Kullanıcıdan aldıgınız vize ve final puanlarıyla not ortalamasını bulunuz. vizenin %40 finalin %0 ı alınır. Eğer ortalama 50 üzerindeyse dersten geçmiştir.
  // print("vize notunuzu giriniz: ");
  // var vize= int.tryParse(stdin.readLineSync()!) ?? 0;
  // print("final notunuzu girniz: ");
  // var final1=int.tryParse(stdin.readLineSync()!) ?? 0;
  // var islem= (vize*40/100)+(final1*60/100);
  // print("vize ve final notu ortalamanız: $islem");

print("-------------------------------------- 3. SORU ----------------------");
  // 3-) tanımlanan int bir sayının faktöriyelini bulan uygulamayı yazınız.( while döngüsü ile )
  int s1=5;
  int sonuc=1;
  int sayac=1;
  while (sayac<=s1) {
   
    sonuc=sayac*sonuc;
    sayac++;  
  }
 print("verilen $s1 değerinin , faktöriyeli: $sonuc");
}