import 'package:flutter/material.dart';
import 'components/account_page.dart';

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
        //Definindo fonte padrão
        fontFamily: 'RedHatText',
        primaryColor: Colors.white,
      ),
      home: AccountPage(),
    );
  }
}
