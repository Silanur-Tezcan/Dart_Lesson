import 'kalitim_method_overriding.dart';

void main(List<String> args) {
  User user1 = User();

  NormalUser user2 = NormalUser();
  AdminUser user3 = AdminUser();
  ReadOnly user4 = ReadOnly();

  User user5 =
      NormalUser(); // üst sınıfının değişkenine alt sınıf nesneleri bağlayabiliyoruz: up casting.
  User user6 = AdminUser(); // up casting
  NormalUser user7 = ReadOnly();
  User user8 = ReadOnly();
  //! her birnin üst sınıfı user oldugu için tek bir liste içerisinde toplayabiliyorusunuz.
  List<User> tumUserlar = [];
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(user3);
  tumUserlar.add(user4);
  tumUserlar.add(user5);

  //! her biri user değil ama tek bir method kullanılarak isteğe bağlı olarak methodları kullanabiliyoruz. Buna da çok biçimlilik denir.
  userLogin(user1);
  userLogin(user2);
  userLogin(user3);
}

void userLogin(User user) {
  user.girisYap();
  //todo Bu kısımla ise sadece o sınıfa ait methodları çalıştırabilirsiniz.
  if (user is NormalUser) {
    user.davetEt();
  }
  if (user is AdminUser) {
    user.toplamKullaniciSayisiniHesapla();
  }
}
