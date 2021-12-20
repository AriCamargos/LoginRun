import 'package:flutter/material.dart';

class LinkPagePassword extends StatelessWidget {
  const LinkPagePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Esqueceu a senha?',
        style: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 15,
          color: Colors.black38,
        ),
      ),
    );
  }
}

class LinkPageTerms extends StatelessWidget {
  const LinkPageTerms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Termos e Condições de Uso',
        style: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 15,
          color: Colors.black38,
        ),
      ),
    );
  }
}
