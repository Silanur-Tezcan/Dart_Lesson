void main(List<String> args) {
  var sayilar = [5, 12, 33, 54,6];
  var isimler = ["emre", "sila", "ali", "hasan", "ecem"];

  var myMap = Map<int, String>.fromIterable(
    sayilar,
    key: (element) => element,
    value: (element) => (element * element).toString(),
  );
  

  //todo burda da bir den fazla iterables oluşturuyor
  var mayMap2=Map.fromIterables(sayilar,  isimler);
  print(mayMap2);

  //todo putIfAbsent: keye bakar eger keyde deger yoksa ekler.
  myMap.putIfAbsent(30, ()=>"70");
  //todo update ile de keyde var olan değeri günceller
  myMap.update(5, (value) => (int.parse(value)*int.parse(value)).toString());
  print(myMap);
  myMap.updateAll(  (key, value) => "emre");
  print(myMap);
}
