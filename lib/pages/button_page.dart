/* import 'package:flutter/material.dart';
import 'package:loginrun_flutter/pages/login_page.dart';

class ButtonPage extends StatefulWidget {
  final String buttonText;

  const ButtonPage (this.buttonText);


  @override
  ButtonPageState createState() => ButtonPageState();
}

class ButtonPageState extends State<> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class ButtonPage extends StatelessWidget {
  final String texto;

  ButtonPage(this.texto)

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        child: Text('Login'),
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.black, width: 2.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child:Text(texto),
        onPressed: (){} 
      ),
    );
  }
}
 */