import 'package:flutter/material.dart';

class ButtonTextFild extends StatefulWidget {
  @override
  _ButtonTextFildState createState() => _ButtonTextFildState();
}

class _ButtonTextFildState extends State<ButtonTextFild> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      cursorColor: Colors.black,
      keyboardType: TextInputType.text,
      decoration: new InputDecoration(
        labelText: "Usuário",
        labelStyle: TextStyle(
          decoration:
              TextDecoration.none, //Texto dentro da label sublinhado nulo.
          color: Colors.black26,
          fontWeight: FontWeight.bold,
        ), //2º label
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
    );
  }
}
