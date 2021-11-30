import 'package:flutter/material.dart';
import 'dart:ui';

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
          style: TextStyle(fontSize: 15,
          fontWeight: FontWeight.w900), //Espessura da fonte.
        ),
        actions: [
          Icon(
            Icons.settings_outlined),
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
          )
        ],
      ),
      body: Container(
        
        padding: EdgeInsets.only( //Borda da logo.
          top: 40,
          left: 40,
          right: 40,
          bottom: 60,
        ),

        color: Colors.white,
        
        child: ListView( //Inserindo as listas
          children: [ 
          SizedBox( //Definindo o tamanho da imagem da logo.
            width: 128,
            height: 128,
            child: Image.asset("assets/images/logo_maior.png"),
          ),

          SizedBox(
            height: 80,
          ),

          TextFormField(
            autofocus: false,
            cursorColor: Colors.black,
            keyboardType: TextInputType.text,
            decoration: new InputDecoration(
              labelText: "Username",
              labelStyle: TextStyle(
                decoration: TextDecoration.none, //Texto dentro da label sublinhado nulo.
                color: Colors.black26,
                fontWeight: FontWeight.bold //Espessura da fonte negrito.
              ),//2º label
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 25,
          ),

          TextFormField(
            cursorColor: Colors.black, //Mudando cor do cursor
            autofocus: false, //Auto-focus: falso.
            keyboardType: TextInputType.text, //Label de texto.
            obscureText: true, //Senha oculta.
            decoration: InputDecoration(  
              labelText: 'Password', //O label faz a transição do texto para a borda.
              labelStyle: TextStyle( //Configurando estilo do texto.
                color: Colors.black26,
                fontWeight: FontWeight.bold, //Letra em negrito.
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50), //Arredondando borda do TextInput.
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50), //Arredondando borda do TextInput quando houver ação.
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2, //Espessura da borda quando houver a ação.
                ),
              ),
              suffixIcon: Icon( //Icon no fim do label.
                Icons.remove_red_eye_outlined,
                color: Colors.black38,
              ),
            ),
          ),

          SizedBox(
            height: 40,
          ),

          //Para aumentar a altura do botão, colocar dentro de SizedeBox
          SizedBox(
            height: 70,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                'Login'.toUpperCase(),
                style: TextStyle(
                    letterSpacing: 2.5, //Espaçamento entre as letras.
                    fontSize: 11,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    backgroundColor: Colors.black),
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

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

          SizedBox(
            height: 65,
          ),

          Row( //Linhas dos botões de baixo.
            mainAxisAlignment: MainAxisAlignment.center, //Alinhamento centralizado.
            children: [
              SizedBox(
                height: 60,
                child: OutlinedButton( //Botão escrito.
                  onPressed: () {},
                  child: Text( //Estilizando apenas o texto do botão.
                    'Create an Account'.toUpperCase(),
                    style: TextStyle(
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.w900,
                      fontSize: 12,
                      color: Colors.black38,
                    ),
                  ),
                  style: OutlinedButton.styleFrom( //Estilizando o botão em sí.
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.fromLTRB(43, 20, 43, 20), //Bordas dento do botão.
                  ),
                ),
              ),
              OutlinedButton( //Botão com a logo GOOGLE.
                onPressed: () {},
                child: Image.asset(
                  'assets/images/google-logo1.png',
                  width: 20,
                  height: 20,
                ),
                style: OutlinedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
