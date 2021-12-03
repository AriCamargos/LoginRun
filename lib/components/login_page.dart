import 'package:flutter/material.dart';
import 'package:loginrun_flutter/components/button_login.dart';
import 'package:loginrun_flutter/components/button_password.dart';
import 'package:loginrun_flutter/components/space_page.dart';
import 'dart:ui';
import 'button_textfild.dart';
import 'package:loginrun_flutter/components/button_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        elevation: 0, //Sombra no fim da AppBar nulo.
        centerTitle: true, //Texto centralizado
        title: Text(
          'Sign In',
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w900), //Espessura da fonte.
        ),
        actions: [
          Icon(Icons.settings_outlined),
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          //Borda da logo.
          top: 40,
          left: 40,
          right: 40,
          bottom: 60,
        ),
        color: Colors.white,
        child: ListView(
          //Inserindo as listas
          children: [
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/images/logo_maior.png"),
            ),

            SpacePage80(),

            ButtonTextFild(), //Função botão Username em TextFildForm.

            SpacePage25(),

            ButtonPassword(), //Função button passaword.

            SpacePage40(),

            ButtonLogin(), //Função botão do login.

            SpacePage10(),

            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot password?',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 15,
                  color: Colors.black38,
                ),
              ),
            ),

            SpacePage65(), //Altura do button login até o o button link.
            
            ButtonPage(), //Método botão bottom.
          ],
        ),
      ),
    );
  }
}
