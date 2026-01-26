import 'dart:io';

Future<void> main(List<String> args) async {
  File dosya=File('data.txt');
  await dosyayaYaz(dosya);
  dosyadanOKu(dosya);
  
  
}

void dosyadanOKu(File dosya) async {
    var dosyaIcerigi= await dosya.readAsLines();
    dosyaIcerigi.forEach((satir){
        print(satir);
    });
}


Future<void> dosyayaYaz(File dosya) async {
  await dosya.writeAsString("Sila Nur Tezcan\n", mode: FileMode.append);
  await dosya.writeAsString("Satır 2\n", mode: FileMode.append);
  await dosya.writeAsString("Satır 3\n", mode: FileMode.append);
  await dosya.writeAsString("Satır 4\n", mode: FileMode.append);
}
