import 'package:flutter/material.dart';
import 'package:loginrun_flutter/components/space_page.dart';

class NameSurnamePage extends StatelessWidget {
  const NameSurnamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: TextFormField(
            cursorColor: Colors.black,
            keyboardType: TextInputType.multiline,
            decoration: new InputDecoration(
              labelText: 'Nome',
              labelStyle: TextStyle(
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                color: Colors.black38,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
        SpacePageWidth5(),
        Flexible(
          child: TextFormField(
            cursorColor: Colors.black,
            keyboardType: TextInputType.name,
            decoration: new InputDecoration(
              labelText: 'Sobrenome',
              labelStyle: TextStyle(
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                color: Colors.black38,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
