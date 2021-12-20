import 'package:flutter/material.dart';
import 'package:loginrun_flutter/components/space_page.dart';

class TopText extends StatelessWidget {
  const TopText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Seus Dados',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          SpacePageWidth103(),
          Text(
            'Configurações',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class LinePage extends StatelessWidget {
  const LinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 170,
            height: 5,
            color: Colors.black,
          ),
          SpacePageWidth5(),
          Container(
            width: 170,
            height: 5,
            color: Colors.black12,
          ),
        ],
      ),
    );
  }
}
