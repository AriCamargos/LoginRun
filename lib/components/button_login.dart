import 'package:flutter/material.dart';

class ButtonLogin extends StatefulWidget {
  @override
  _ButtonLoginState createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}

class ButtonNextStep extends StatelessWidget {
  const ButtonNextStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Próximo'.toUpperCase(),
          style: TextStyle(
            letterSpacing: 2.5, //Espaçamento entre as letras.
            fontSize: 11,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.black12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
