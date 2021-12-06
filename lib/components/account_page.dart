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
              fontSize: 15,
              fontWeight: FontWeight.w900), //Espessura da fonte
        ),
        actions: [
          Icon(Icons.settings_outlined),
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 40,
          left: 40,
          right: 40,
          bottom:60,
        ),
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.account_circle),
            Expanded(
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
                      color: Colors.black38,

                      ),
                    ),
                  ),
                ],
              ),),
            /* ListView(
              children: [
              Icon(Icons.account_circle_sharp),
              TextFormField(
                autofocus: false,
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    color: Colors.black),
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
            ], */
          ],
        ),
      ),
    );
  }
}
