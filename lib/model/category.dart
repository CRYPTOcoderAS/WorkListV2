import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Category {
  static final String tableName = 'category';

  static final String columnId = 'id';
  static final String columnName = 'name';

  static const String allLists = 'All Lists';
  static const String deFault = 'College';
  static const String personal = 'Home';
  static const String shopping = 'Others';
  static const String wishList = 'Targets';
  static const String work = 'Long Notes';
  static const String finished = 'Finished';

  int id;
  String name;

  Category({this.id, @required this.name});

  Map toMap() {
    return <String, dynamic>{columnName: name};
  }

  Category.fromMap(Map map) {
    id = map[columnId];
    name = map[columnName];
  }

  IconData getIcon() {
    switch (name) {
      case deFault:
        return FontAwesomeIcons.book;
      case personal:
        return FontAwesomeIcons.home;
      case shopping:
        return FontAwesomeIcons.shoppingCart;
      case wishList:
        return FontAwesomeIcons.heart;
      case work:
        return Icons.work;
      case finished:
        return Icons.done_all;
      default:
        return FontAwesomeIcons.list;
    }
  }
}
