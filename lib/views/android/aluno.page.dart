//igonre_for_file:
//ignore_for_file:

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:unibus/controllers/unibus.controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'android.app.dart';
import 'login.page.dart';

class AlunoPage extends StatelessWidget {
  final taskController = new FaculdadeController();

  var collection = FirebaseFirestore.instance.collection('Faculdades');

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
            title: const Text("Unibus"),
            backgroundColor: Colors.green,
          ),
          body: ListView.builder(
              itemCount: taskController.read().length,
              itemBuilder: (_, index) {
                final task = taskController.read()[index];
                var query = collection.doc(task.name).get();
                return CheckboxListTile(
                  value: task.finished,
                  onChanged: null,
                  title: Text(task.name!),
                );
              }),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            icon: const Icon(Icons.map),
            label: const Text('Rota Atual'),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        ));
  }
}
