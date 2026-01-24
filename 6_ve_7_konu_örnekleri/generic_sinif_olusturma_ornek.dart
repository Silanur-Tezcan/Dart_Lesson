void main(List<String> args) {
  Kutu<String> kutu = Kutu();
  kutu.push("Süt");
  kutu.push("Çikolata");
  kutu.push("");

  print(kutu.pop());
}

class Kutu<T> {
  List<T> icerik = [];
  push(T yeniIcerik) {
    icerik.add(yeniIcerik);
  }

  T? pop() {
    try {
      if (icerik.isNotEmpty) {
        return icerik.removeLast();
      } else {
        print("içerik boş");
        return null;
      }
    } catch (e) {
      print("Beklenmedik bir hata oluştu: $e");
      return null;
    }
  }
}
