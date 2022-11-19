import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'aluno.page.dart';
import 'login.page.dart';
import 'perfil.app.dart';
import 'motorista.page.dart';

class AndroidApp extends StatefulWidget {
  const AndroidApp({Key? key}) : super(key: key);

  @override
  _AndroidAppState createState() => _AndroidAppState();
}

class _AndroidAppState extends State<AndroidApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        '/aluno': (context) => AlunoPage(),
        '/motorista': (context) => MotoristaPage(),
        '/login': (context) => HomePage(),
        '/perfil': (context) => PerfilPage(),
      },
    );
  }
}

// class AndroidApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:  LoginPage(),
//       routes: {
//         '/aluno':(context) => AlunoPage(),
//         '/motorista':(context) => MotoristaPage(),
//         '/login':(context) => LoginPage(),
//         '/perfil':(context) => PerfilPage(),
//       },
//     );
//   }
// }