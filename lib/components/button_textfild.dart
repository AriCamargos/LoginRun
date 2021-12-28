import 'package:flutter/material.dart';
import 'package:loginrun_flutter/components/space_page.dart';

class ButtonTextFild extends StatefulWidget {
  @override
  _ButtonTextFildState createState() => _ButtonTextFildState();
}

class _ButtonTextFildState extends State<ButtonTextFild> {
  final usernameController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        TextFormField(
          controller: usernameController,
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
        ),
        SpacePage25(),
        TextFormField(
          controller: senhaController,
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
        ),
        SpacePage40(),
        SizedBox(
          height: 70,
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {
              print(usernameController); //username aparecendo no console
              print(senhaController); //
            },
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
      ],
    ));
  }
}
