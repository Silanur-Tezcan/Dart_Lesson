void main(List<String> args) {
  Map<String, int> alanKodlari={"ankara":312,"bursa":224};
  Map<int, String> alanKodlari2={312:"ankara",224:"bursa"};

  var bilgiler=<String, dynamic>{
    "ad":"sıla",
    "yas":23,
    "bekarMi":false
  };

 var ing= Map<String,String>();
 ing['car']="araba";
 ing['apple']="elma";

//? Burda ise her ikiside aynı görünsede alandkodlari birde ankara olarak çağırabilirsin ama alankodlari2 de artık <int,string> oldugu için alan kodunu girmen gerekir.
 print(alanKodlari['ankara']);
 print(alanKodlari2[312]);

for(var eleman in alanKodlari.keys){
   print(eleman);
}

for(var eleman in alanKodlari.values){
   print(eleman);
}

//? bu sayede ise hem keys hem values ları gezebiliyorsun
for(var eleman in alanKodlari.entries){
  print("${eleman.key} keyinin degeri: ${eleman.value}");
}

alanKodlari['İstanbul']=312;
alanKodlari2[224]="İstanbul";

var map1={"ad":"sıla"};
var map2={"soyad":"tezcan"};

var sonMap={...map1,...map2};
print(sonMap);

print(alanKodlari.containsKey("bursa"));
print(alanKodlari.containsValue(224));
print("------------------------- ALANKODLARİ2 -----");
print(alanKodlari2.containsKey(224));
print(alanKodlari2.containsValue("bursa"));

alanKodlari.remove("ankara");
alanKodlari.remove("bursa");
print(alanKodlari);

}