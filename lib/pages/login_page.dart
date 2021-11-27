
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
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
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
            height: 25,
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
            height: 25,
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              filled: false,
              hintText: "Password",
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.black38,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.black26),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //Para aumentar a altura do botão, colocar dentro de SizedeBox
          SizedBox(
            height: 70,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                'Login'.toUpperCase(),
                style: TextStyle(
                  letterSpacing: 2.5,
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
            height: 98,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Create an Account'.toUpperCase(),
                    style: TextStyle(
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.w900,
                      fontSize: 12,
                      color: Colors.black38,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.fromLTRB(43, 20, 43, 20),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
                width: 7,
              ),
              OutlinedButton(
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
