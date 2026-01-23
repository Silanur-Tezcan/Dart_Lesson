import 'ucabilenler.dart';

void main(List<String> args) {
  Havyalanylar lessie = Kopek();
  lessie.havla();
  Ucabilenler ucak = Ucak();
  Ucabilenler kus = Kus();

  List<Ucabilenler> tumUcanYapilar=[];
  tumUcanYapilar.add(kus);
  tumUcanYapilar.add(ucak);

  print(tumUcanYapilar.length);
  print(tumUcanYapilar);
  

}

//todo abstract içindeki voidler o sınıf içinde kullanılmaya bilir gereksiz olabilir
//todo bunun içinde sadece ihtiyac olan abstratc sınıfın voidlerini doldurmak için kalıtımda interface kullanılır.
class Ucak implements Ucabilenler {
  @override
  void uc() {
    print("ucak ucabilir.");
  }
//todo Ucabilenler adındaki interface de ne kadar void oluştursanda burda tekrar override edip içini doldurman gerek.
  @override
  void test() {
    // TODO: implement test
  }
}

class Kus extends Hayvan implements Ucabilenler {
  @override
  void uc() {
    print("kuşlar, uçabilen hayvanlardır");
  }
  
  @override
  void test() {
    // TODO: implement test
  }
}

abstract interface class Kosabilenler {
  void kos();
}

abstract interface class Havyalanylar {
  void havla();
}

abstract class Hayvan {}
//todo Bir sınıf sadece bir üst sınıfa sahip olabiliyorken, interface ile implements yapısı sayesinde birden fazla ekleyebiliyoruz.

class Kopek extends Hayvan implements Havyalanylar, Kosabilenler {
  @override
  void havla() {
    print("havhav");
  }

  @override
  void kos() {
    // TODO: implement kos
  }
}
