void main(List<String> args) {
  // Break : if ile istenilen noktaya gelince bitiri kes durdur .
  for (int i = 0; i < 10; i++) {
    if (i >= 5) {
      break;
    }
    print("i degeri $i ");
  }
  print("for döngüsü bitti");
print("--------------------------------------------------");
  for (int i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      print("i degeri olan $i çift sayıdir.");
    } else {
      continue;
    }
    print("döngü sonraki tura gidecek i degeri $i");
  }
print("--------------------------------------------------");
  
  distakiDongu: for (int i = 1; i <= 10; i++) {
   
     ictekiDongu: for (int j = 1; j <= 10; j++) {
      if (i == 3) {
        break distakiDongu;
      }
      print("$i * $j = ${i * j}");
    }
  }
}
