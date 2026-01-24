import 'dart:math';

void main(List<String> args) {
  try {
    var sonuc = kareKokunuHesapla(-25);
    print(sonuc);
  } on FormatException catch (e) {
    print(e.message);
    print(e);
  } catch (e) {
    print("Belirlenemeyen hata");
  }
}

double kareKokunuHesapla(int sayi) {
  try {
    if (sayi < 0) {
      throw FormatException("Parametre negatif olamaz.");
    } else {
      return sqrt(sayi);
    }
  } catch (e) {
    print("hata metot içinde yakalandı");
    // throw FormatException("Parametre negatif olamaz.");
    rethrow;
    // return 0;

  }
}
