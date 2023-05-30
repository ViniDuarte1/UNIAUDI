import 'package:sqflite/sqflite.dart';

import '../components/option/listoption.dart';
import 'db.dart';

class OptionDao {
  static const String useroption = '''CREATE TABLE $_tablename 
                            
                             $_name TEXT)''';

  static const String _tablename = 'option';
  static const String _name = 'nome';

  //toList e toMap
  List<ListOption> toList(List<Map<String, dynamic>> MapaDeOption) {
    final List<ListOption> MapaDeOptionConvertida = [];
    for (Map<String, dynamic> linha in MapaDeOption) {
      final ListOption option = ListOption(nome: linha['_name']);
      MapaDeOptionConvertida.add(option);
    }
    return MapaDeOptionConvertida;
  }

  Map<String, dynamic> toMap(ListOption option) {
    final Map<String, dynamic> MapaDeOption = {};
    MapaDeOption[_name] = option.nome;
    return MapaDeOption;
  }

  //findall
  Future<List<ListOption>> findAll() async {
    print('acessando find all: ');
    final Database db = await getDatabase();
    final List<Map<String, dynamic>> result = await db.query(_tablename);
    print('procuarando dados,resultado: $result');
    return toList(result);
  }

  //find
  Future<List<ListOption>> find(String nomedaoption) async {
    final Database db = await getDatabase();
    final List<Map<String, dynamic>> result = await db
        .query(_tablename, where: '$_name = ?', whereArgs: [nomedaoption]);
    return toList(result);
  }

  //SAVE
  Save(ListOption option) async {
    final Database db = await getDatabase();
    var itemExists = await find(option.nome);
    final Map<String, dynamic> values = toMap(option);
    if (itemExists.isEmpty) {
      print('a Tarefa não Existia.');
      return await db.insert(_tablename, values);
    } else {
      print('a Tarefa existia!');
      return await db.update(_tablename, values,
          where: '$_name = ?', whereArgs: [option.nome]);
    }
  }

  //DELETE
  Future<int> delete(String nomedaoption) async {
    final Database db = await getDatabase();
    return await db
        .delete(_tablename, where: '$_name = ?', whereArgs: [nomedaoption]);
  }
}
