import 'package:mysql1/mysql1.dart';

Future<MySqlConnection> getConnection() async {
  var votre_port_mysql;
  final settings = ConnectionSettings(
    host: 'votre_host_mysql',
    port: votre_port_mysql,
    user: 'votre_nom_utilisateur',
    password: 'votre_mot_de_passe',
    db: 'votre_base_de_donnees',
  );

  return await MySqlConnection.connect(settings);
}


Future<void> insertData() async {
  final conn = await getConnection();
  await conn.query('INSERT INTO table (colonne) VALUES (?)', ['valeur']);
  await conn.close();
}
