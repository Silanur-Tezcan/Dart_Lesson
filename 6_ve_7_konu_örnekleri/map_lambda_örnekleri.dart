void main(List<String> args) {
  Map<String,int> notlar={"ali":95,"sila":100,"ahmet":15,"veli":49};
var liste=notlar.entries.toList();// listeye çevirdim mapi

var gecenler=liste.where((e)=>e.value>=50).toList(); // lambda ile notu 50 den büyük olanları seçiyoruz

gecenler.sort((a,b)=> b.value.compareTo(a.value)); // sort ile buyukten kucuge sıralama yaptık

print("Geçenler ve notları: ");
gecenler.forEach((e)=> print("${e.key}: ${e.value}"));

}