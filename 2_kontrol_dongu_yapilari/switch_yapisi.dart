void main(List<String> args) {
  String notDegeri = "CC";

  switch (notDegeri) {
    case "AA":
      print("notun 90-100 arasında.");
    case "BA":
      print("notun 80-90 arasında.");
    case "BB":
      print("notun 70-80 arasında.");
    case "CC":
      print("notun 50-60 arasında.");
    default:
      {
        print("girdiğiniz harf notu tanımlı değil");
      }
  }

  int sayi=60;
  int bolum=(sayi/10).toInt();
  switch(bolum){
    case 6:
    print("sayi 60 tan büyükyür.");
    case 5:
    print("sayi 50 tan büyükyür.");
    case 4:
    print("sayi 40 tan büyükyür.");
  }
}
