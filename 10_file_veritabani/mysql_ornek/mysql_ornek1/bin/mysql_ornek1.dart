import 'package:mysql_client/mysql_client.dart';
import 'dart:developer'; // log fonksiyonu için

Future<void> main() async {
  // 1. Logger Fonksiyonu (Hataları temizlenmiş hali)
  void logger(String mesaj, {bool hataMi = false}) {
    if (hataMi) {
      log("❌ HATA: $mesaj");
    } else {
      log("✅ BİLGİ: $mesaj");
    }
  }

  // 2. Veritabanı Bağlantısı
  final conn = await MySQLConnection.createConnection(
    host: '127.0.0.1',
    port: 3306,
    userName: 'root',
    password: '192419Sila',
    databaseName: 'dart_dersleri_db',
  );

  try {
    await conn.connect();
    logger("Veritabanı bağlantısı başarıyla kuruldu.");

    // 3. Verileri Listeleme (SELECT)
    var results = await conn.execute("SELECT * FROM kullanicilar");

    if (results.rows.isEmpty) {
      logger("Tablo şu an boş.");
    } else {
      for (var row in results.rows) {
        // Assoc ile sütun ismine göre veriyi yazdırıyoruz
        print(
          "ID: ${row.assoc()['id']}, TC: ${row.assoc()['tc']}, İsim: ${row.assoc()['ad']}",
        );
      }
    }
  } catch (e) {
    // Hata durumunda logger'ı hata moduyla çağırıyoruz
    logger("Bir hata oluştu: $e", hataMi: true);
  } finally {
    // Her durumda bağlantıyı kapatıyoruz
    await conn.close();
    logger("Bağlantı kapatıldı.");
  }
  
}
