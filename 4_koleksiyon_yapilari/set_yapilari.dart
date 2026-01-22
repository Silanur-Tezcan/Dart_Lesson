void main(List<String> args) {
  // listede elemanlar sıralı bir şekilde tutulurken sette sıra aranmaz
  // aynı zamanda listede tekrar eden yapılar tutabilirken sette tutamazsın
  // yani sette butun elemanlar uniqtır
  Set<int> tekSayilar = Set();
  tekSayilar.add(1);
  tekSayilar.add(3);
  tekSayilar.add(5);
  tekSayilar.add(1);
  tekSayilar.add(7);
  tekSayilar.add(5);
  tekSayilar.add(3);
  // eğer sadece {} paranztezle kullanırsan map olarak algılar ama <int> kullanarak set olarak algılar
  var ciftSayilar = <int>{};
  ciftSayilar.add(0);
  ciftSayilar.add(2);
  ciftSayilar.add(4);
  ciftSayilar.add(2);
  ciftSayilar.add(6);
  ciftSayilar.add(8);
  ciftSayilar.add(6);

  for (var s1 in tekSayilar) {
    print(s1);
  }
  print(tekSayilar);
  print(ciftSayilar);
  //? Bu şekilde yazdırırsanda tek ve cift sayıları tek bir set dosyasında birleştirilmiş olarak görürsün
  var sayilar = <int>{};
  sayilar.addAll(tekSayilar);
  sayilar.addAll(ciftSayilar);
  sayilar.addAll([5, 5, 5, 5, 5, 5, 9, 24, 92, 14]);

  //? dart dilinde yer alan kısa yolu, bu sayede kısaca diğer yapıları tek bir yapı altında toplayabilirisin
  sayilar.clear();

  sayilar = <int>{
    ...tekSayilar,
    ...ciftSayilar,
    ...[53, 53, 46, 84, 84],
  };
  print(sayilar);

  var numalar = Set.from([5, 9, 8, 8, 8, 9, 7, 5]);
  var deneme=Set.from({1,5,9,9,7,5,6,});
  print(numalar);
  print(deneme);

  print(numalar.contains(5));
  print(numalar.remove(5484));
}
