import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainpage/drawer.dart';
import 'package:flutter_application_1/edit_profile.dart';
import 'package:flutter_application_1/mainpage/main_page.dart';
import 'package:flutter_application_1/profile_page.dart';
import 'package:flutter_application_1/profile_widget.dart';
import 'package:flutter_application_1/user_preferences.dart';
import 'package:flutter_application_1/user.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Try());
  }
}
