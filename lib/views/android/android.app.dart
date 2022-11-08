import 'package:flutter/material.dart';

import 'aluno.page.dart';
import 'login.page.dart';
import 'perfil.app.dart';
import 'motorista.page.dart';

class AndroidApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  LoginPage(),
      routes: {
        '/aluno':(context) => AlunoPage(),
        '/motorista':(context) => MotoristaPage(),
        '/login':(context) => LoginPage(),
        '/perfil':(context) => PerfilPage(),
      },
    );
  }
}