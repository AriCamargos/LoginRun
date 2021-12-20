import 'package:flutter/material.dart';

class ButtonPassword extends StatefulWidget {
  @override
  _ButtonPasswordState createState() => _ButtonPasswordState();
}

class _ButtonPasswordState extends State<ButtonPassword> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black, //Mudando cor do cursor
      autofocus: false, //Auto-focus: falso.
      keyboardType: TextInputType.text, //Label de texto.
      obscureText: true, //Senha oculta.
      decoration: InputDecoration(
        labelText: 'Senha', //O label faz a transição do texto para a borda.
        labelStyle: TextStyle(
          //Configurando estilo do texto.
          color: Colors.black26,
          fontWeight: FontWeight.bold, //Letra em negrito.
        ),
        border: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(50), //Arredondando borda do TextInput.
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              50), //Arredondando borda do TextInput quando houver ação.
          borderSide: BorderSide(
            color: Colors.black,
            width: 2, //Espessura da borda quando houver a ação.
          ),
        ),
        suffixIcon: Icon(
          //Icon no fim do label.
          Icons.remove_red_eye_outlined,
          color: Colors.black38,
        ),
      ),
    );
  }
}
