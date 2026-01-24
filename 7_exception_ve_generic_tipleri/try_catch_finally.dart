void main(List<String> args) {
  //! Hata yakalama, düzeltme

  //todo bir kere try,catch , finally kullanabilirken birden fazla on kullanabilirsin
  print("program başladı");
  try {
    int sayi = 100 ~/ int.parse("emre"); //alt gr+ü 2 kere ~~ yapar
    print(sayi);
    // ignore: deprecated_member_use
  } on UnsupportedError catch (e) {
    print(e.message);
  } on FormatException catch (e) {
    print(e.message);
    print(e);
    print("Sayilardan biri tam sayi değil.");
  } catch (e) {
    print("Hata Çıktı.");
    print(e);
  } finally {
    print("Bu kısmı hata çıksa da çıkmasada çalışacak kodları yazıyoruz.");
  }

  print("program bitti");
}
