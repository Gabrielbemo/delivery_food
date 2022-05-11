import 'package:delivery_food/database/db.dart';
import 'package:flutter/material.dart';
import 'package:delivery_food/models/posicao.dart';

class ContaRepository extends ChangeNotifier {
  late DataTable db;
  List<Posicao> _users = [];
  String _name = "";

  get name => _name;
  List<Posicao> get users => _users;

  ItemRepository() {
    _initRepository();
  }

  _initRepository() async {
    await _getName();
  }

  _getName() async {
    db = await DB.instance.database;
    List user = await db.query('user', limit: 1);
    _name = user.first['name'];
    notifyListeners();
  }

  setName(String name) async {
    db = await DB.instance.database;
    db.update()
  }
}
