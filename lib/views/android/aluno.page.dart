//igonre_for_file:
//ignore_for_file:

import 'package:flutter/material.dart';
import 'package:unibus/controllers/unibus.controller.dart';

class AlunoPage extends StatelessWidget {
  final taskController = new FaculdadeController();

  @override
  Widget build(BuildContext context) {
    ThemeData(
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
    );
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
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
                Navigator.of(context).pushReplacementNamed('/login');
              },
            ),
            ListTile(
              title: const Text('Motorista'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/motorista');
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
        label: const Text('Rota Atual'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
