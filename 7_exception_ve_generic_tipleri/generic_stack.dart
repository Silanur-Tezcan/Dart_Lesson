// class GenericStack {
//   List _listem = [];
//   push(yeniEleman) {
//     _listem.add(yeniEleman);
//   }

//   pop() {
//     return _listem.removeLast();
//   }
// }
//todo bu kısma T yerine istediğin her şeyi yazabilirisin olması gereken o ismi yerleştirdin mi butun veri tipleri diğer sayfada tanımladıklarınla aynı hale gelir.
class GenericStack<T> {
  List<T> _listem = [];
  push(T yeniEleman) {
    _listem.add(yeniEleman);
  }

  T pop() {
    return _listem.removeLast();
  }
}


class IntegerGenericStack {
  List<int> _listem = [];
  push(int yeniEleman) {
    _listem.add(yeniEleman);
  }

  int pop() {
    return _listem.removeLast();
  }
}


//! veri saklama yöntemlerinden biridir. Bilgisayardaki çoğu sistemde bu yapı kullanılıyor. yeni eleman ekelem push çıkarma pop ile olur eleman eklerken en üste eklerken çıkarırken en sondan çıkarır