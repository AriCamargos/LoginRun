import 'dart:ffi';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Sign In',
          style: TextStyle(
              fontFamily: 'RedHatText',
              fontSize: 15,
              fontWeight: FontWeight.w900),
        ),
        actions: [
          Icon(
            Icons.settings_outlined,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
          )
        ],
      ),
      body: Container(
        //Borda da logo
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
          bottom: 60,
        ),
        color: Colors.white,
        //Inserindo as listas
        child: ListView(children: [
          //Definindo a imagem da logo
          SizedBox(
            width: 128,
            height: 128,
            child: Image.asset("assets/images/logo.png"),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.black26),
              ),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              filled: false,
              hintText: "Username",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.black26),
              ),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              filled: false,
              hintText: "Password",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text(
              'Login'.toUpperCase(),
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  backgroundColor: Colors.black),
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
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
        ]),
      ),
    );
  }
}
