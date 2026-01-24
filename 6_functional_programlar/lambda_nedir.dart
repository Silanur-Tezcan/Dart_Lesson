void main(List<String> args) {
 //! Tek satırda tanımlanailen fonksiyonlardır. İsimlendirlmemiş yapılara lambda denir
 Function  fonksiyon=(int a, int b){
  int toplam=a+b;
  print(toplam);
 };
 //todo Lambda
(int a, int b){
  int toplam=a+b;
  print(toplam);
 }(20,30);

 fonksiyon(5,6);

var f2=(int sayi)=> sayi*2;
var f3=(int sayi){
  return sayi*2;
};
print(f2(15));
var sayi=f3(10);
print(sayi);

//todo Lambda String
var uzunluk=(String uzun)=>uzun.length;
print(uzunluk("sila"));

}

void sayilariTopla(int a,int b){
  int toplam=a+b;
  print("Toplam: $toplam");
} 