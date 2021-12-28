import 'package:flutter/material.dart';
import 'package:loginrun_flutter/components/link_page.dart';
import 'package:loginrun_flutter/components/space_page.dart';
import 'package:loginrun_flutter/components/toptext_page.dart';
import 'button_login.dart';
import 'nameSurname_page.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0, //Sombra no fim da AppBar nulo.
        centerTitle: true, //Texto centralizado
        title: Text(
          'Cadastro',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w900,
          ), //Espessura da fonte
        ),
        actions: [
          Icon(
            Icons.settings_outlined,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
          bottom: 40,
        ),
        color: Colors.white,
        child: Container(
          child: ListView(children: [
            TopText(),
            SpacePage25(),
            LinePage(),
            SizedBox(
              height: 45,
            ),
            Container(
              child: TextFormField(
                autofocus: false,
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  icon: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.black26,
                    size: 80,
                  ),
                  labelText: 'Usuário',
                  labelStyle: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Colors.black38,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
              ),
            ),
            SpacePage45(),
            NameSurnamePage(),
            SpacePage15(),
            Container(
              child: TextFormField(
                //Validador
                validator: (String? _email) {
                  if (_email?.length != 5) {
                    return "E-mail parece curto demais!";
                  }
                  return null;
                },
                autofocus: false,
                cursorColor: Colors.black,
                keyboardType: TextInputType.emailAddress,
                decoration: new InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.black, width: 2))),
              ),
            ),
            SpacePage15(),
            Container(
              child: TextFormField(
                validator: (value) {
                  // ignore: unrelated_type_equality_checks
                  if (value?.length != 5) {
                    return "A senha deve pelo menos 6 caracteres";
                  }
                },
                cursorColor: Colors.black, //Mudando cor do cursor
                autofocus: false, //Auto-focus: falso.
                keyboardType: TextInputType.text, //Label de texto.
                obscureText: true, //Senha oculta.
                decoration: InputDecoration(
                  labelText:
                      'Senha', //O label faz a transição do texto para a borda.
                  labelStyle: TextStyle(
                    //Configurando estilo do texto.
                    color: Colors.black38,
                    fontWeight: FontWeight.bold, //Letra em negrito.
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        50), //Arredondando borda do TextInput.
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        50), //Arredondando borda do TextInput quando houver ação.
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2, //Espessura da borda quando houver a ação.
                    ),
                  ),
                ),
              ),
            ),
            SpacePage15(),
            Container(
              child: TextFormField(
                autofocus: false,
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: new InputDecoration(
                    labelText: 'Confirmar Senha',
                    labelStyle: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.black, width: 2))),
              ),
            ),
            SpacePage25(),
            LinkPageTerms(),
            SpacePage45(),
            Row(
              children: [
                Expanded(
                  child: ButtonNextStep(),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
