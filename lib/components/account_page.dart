import 'package:flutter/material.dart';
import 'dart:ui';

class AccountPage extends StatelessWidget {
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
        color: Colors.white,
        child: ListView(
          children: [
          TextFormField(
            autofocus: false,
            cursorColor: Colors.black,
            keyboardType: TextInputType.text,
            decoration: new InputDecoration(
              labelText: 'Name',
              labelStyle: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
              ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: Colors.black),
              ), 
            ),
          ),
        ],),
        
      ),
      
      
    );
  }
}
