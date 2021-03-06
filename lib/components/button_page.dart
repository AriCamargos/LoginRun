import 'package:flutter/material.dart';
import 'package:loginrun_flutter/components/account_page.dart';
import 'package:loginrun_flutter/components/space_page.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //Linhas dos botões de baixo.
      mainAxisAlignment: MainAxisAlignment.center, //Alinhamento centralizado.
      children: [
        SizedBox(
          height: 60,
          child: OutlinedButton(
            //Botão escrito.
            onPressed: () {
              Navigator.of(context).push(
                _createdRoute(),
              );
            },
            child: Container(
              child: Expanded(
                child: Text(
                  //Estilizando apenas o texto do botão.
                  'Criar uma conta'.toUpperCase(),
                  style: TextStyle(
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.w900,
                    fontSize: 12,
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
            style: OutlinedButton.styleFrom(
              //Estilizando o botão em sí.
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              padding:
                  EdgeInsets.fromLTRB(43, 20, 43, 20), //Bordas dento do botão.
            ),
          ),
        ),
        SpacePageWidth5(),
        OutlinedButton(
          //Botão com a logo GOOGLE.
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
    );
  }
}

//Animando uma rota de página de baixo para cima
Route _createdRoute() {
  return PageRouteBuilder(
      //Classe que define rotas de página
      pageBuilder: (context, animation, secondaryAnimation) =>
          AccountPage(), //Retorno pageBuilder = cria o cinteúdo primário da rota.
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        //Retorno transitionsBuilder = adiciona transição.
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });
}
