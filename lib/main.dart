import 'package:flutter/material.dart';
import 'package:loginrun_flutter/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Run App',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: LoginPage(),
    );
  }
}