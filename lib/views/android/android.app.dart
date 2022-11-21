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
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/aluno': (context) => AlunoPage(),
        '/motorista': (context) => MotoristaPage(),
        '/login': (context) => const HomePage(),
        '/perfil': (context) => const ProfilePage(),
        '/root': (context) => const AndroidApp()
      },
    );
  }
}
