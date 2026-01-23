void main(List<String> args) {
  Araba honda = Araba("Honda", 2025);
  // print("Nesne üretildikten sonra.");
  // honda.marka="Honda";
  // honda.modelYili=2022;
  honda.bilgileriniSoyle();

  Araba toyota = Araba("Toyota", 2023);
  toyota.bilgileriniSoyle();

  Araba reno = Araba.modelYilsizAraba("reno"); //? İsimlendirilmiş contructor
  reno.bilgileriniSoyle();

  Araba clio = Araba.markasizAraba(2018);
  clio.bilgileriniSoyle();

  var bmw = Araba.factoryKurucusu(null, 2023);
  bmw.bilgileriniSoyle();

  var tesla = Araba.factoryKurucusu("tesla", null);
  tesla.bilgileriniSoyle();
}

//! this anahtar kelimesi yoksa modal yılı ve markayı Araba("toyota",2025) şeklinde yazdıramazsın.
class Araba {
  int? modelYili;
  String? marka;

  //todo VARSAYILAN KURUCU METOT PARAMETRELİ HALİ: kullanıcı kontrolu yapmadan direkt verileri tanımlayabilirsin ama bunun zararı ise tekrar degerler üzerinde işlem yapmanı engelliyor
  //todo parametre olarak aldıgınız degereleri sınıf değişkenlerine atamış olursun.
  Araba(this.marka, this.modelYili) {
    print("kurucu metot tetiklendi");
    if (this.modelYili! < 2000) {
      this.modelYili = 2000;
    }
  }

  //TODO Bir arabadan sadece marka yı kullanmak buna da İSİMLENDİRİLMİŞ CONTRUCTOR yapabilirsin:
  Araba.modelYilsizAraba(this.marka) {
    this.modelYili = 2020;
  }

  Araba.markasizAraba(this.modelYili) {
    this.marka = "Belirtilmemis";
  }
  //! Burda return özelliğini kullabiliyorsun
  factory Araba.factoryKurucusu(String? marka, int? modelYili) {
    if (marka == null) {
      return Araba.markasizAraba(modelYili);
    }
    if (modelYili == null) {
      return Araba.modelYilsizAraba(marka);
    }
    return Araba(marka, modelYili);
  }

  /*  //todo kurucu metot kısmı burası:
  Araba(String m, int yil){
    print("kurucu metot tetiklendi.");
    // this.modelYili=modelYili;
    // this.marka=marka;
    modelYili=yil;
    marka=m;
    //todo Eğer ana değişkenle parametreleri aynı isimle verdiysen this.marka , farklı isimle verdiysen de direkt atama yapman yeterli.
  } */
  void bilgileriniSoyle() {
    print("Bu arabanın model yılı $modelYili  markasi: $marka");
  }
}
