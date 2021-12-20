import 'package:flutter/material.dart';
import 'package:loginrun_flutter/components/button_login.dart';
import 'package:loginrun_flutter/components/button_password.dart';
import 'package:loginrun_flutter/components/link_page.dart';
import 'package:loginrun_flutter/components/space_page.dart';
import 'button_textfild.dart';
import 'package:loginrun_flutter/components/button_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 0, //Sombra no fim da AppBar nulo.
        centerTitle: true,
        title: Text(
          'Entrar',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w900,
              color: Colors.black), //Espessura da fonte.
        ),
        actions: [
          Icon(
            Icons.settings_outlined,
            color: Colors.black,
          ),
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
          left: 30,
          right: 30,
          bottom: 40,
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

            LinkPagePassword(),

            SpacePage65(), //Altura do button login até o o button link.

            ButtonPage(), //Método botão bottom.
          ],
        ),
      ),
    );
  }
}
