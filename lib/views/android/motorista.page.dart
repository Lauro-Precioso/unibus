//igonre_for_file:
//ignore_for_file:

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:unibus/controllers/unibus.controller.dart';
import 'package:unibus/views/android/android.app.dart';

import 'login.page.dart';

class MotoristaPage extends StatefulWidget {
  const MotoristaPage({Key? key}) : super(key: key);

  @override
  _MotoristaPageState createState() => _MotoristaPageState();
}

class _MotoristaPageState extends State<MotoristaPage> {
  final taskController = new FaculdadeController();

  @override
  Widget build(BuildContext context) {
    ThemeData(
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 22, 148, 64),
                  ),
                  child: Text('Unibus'),
                ),
                ListTile(
                  title: const Text('Perfil'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/perfil');
                  },
                ),
                ListTile(
                  title: const Text('Logout'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/root');
                  },
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text("Unibus"),
            backgroundColor: Colors.green,
          ),
          body: ListView.builder(
              itemCount: taskController.read().length,
              itemBuilder: (_, index) {
                final task = taskController.read()[index];
                return CheckboxListTile(
                  value: task.finished,
                  onChanged: null,
                  title: Text(task.name!),
                );
              }),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            icon: const Icon(Icons.map),
            label: const Text('Iniciar Rota'),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        ));
  }
}
