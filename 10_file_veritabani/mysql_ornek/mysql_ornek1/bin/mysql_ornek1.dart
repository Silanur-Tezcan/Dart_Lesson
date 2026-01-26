
import 'package:mysql1/mysql1.dart';

Future<void> main(List<String> arguments) async {
var settings =  ConnectionSettings(
  host: 'localhost', 
  port: 3306,
  user: 'bob',
  password: 'wibble',
  db: 'mydb'
);
var conn = await MySqlConnection.connect(settings);

}
