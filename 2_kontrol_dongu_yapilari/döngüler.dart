void main(List<String> args) {
  // Döngüler loop
  // For
  for (var i = 0; i < 10; i++) {
    print("${i + 1}. sıla");
  }
print("---------------------------------- WHİLE ----------");
  // While
  int sayac = 0;
  while (sayac < 10) {
    print("while ${sayac + 1}");

    sayac+=1;
  }

print("---------------------------------- DO - WHİLE ----------");
  // Do-While
  int sayac2=0;
  do {
    print("do while ${sayac2+1}");
    sayac2++;
  } while (sayac2<5);
}
