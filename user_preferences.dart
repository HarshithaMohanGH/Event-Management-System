import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static late SharedPreferences _preferences;
  static const _keyUser = 'user';
  static const myUser = User(
    imagePath:
        'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
    name: 'Serena',
    email: 'serena@gmail.com',
    about: 'vaada en machi vaalaka bajji un odamba pichu potruven bajji',
  );

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();
  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());
    await _preferences.setString(_keyUser, json);
  }

  static User getUser() {
    final json = _preferences.getString(_keyUser);
    return json == null ? myUser : User.fromJson(jsonDecode(json));
  }
}









//import 'package:flutter/material.dart';
//import 'package:flutter_application_1/user.dart';
//
//class UserPreferences {
//  static const myUser = User(
//      imagePath:
//          'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
//      name: 'Serena',
//      email: 'Serena@gmail.com',
//      about: 'vaada en machi vaalaka bajji un odamba pichu potruven bajji');
//}






//import 'package:flutter_application_1/user.dart';
//
//class UserPreferences {
//  static const myUser = User(
//    imagePath:
//        'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
//    name: 'Serena',
//    email: 'serena@gmail.com',
//  );
//}
//