import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ThemeData(
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Unibus"),
        backgroundColor: Colors.green,
      ),
      body: Form(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 20,
              child: ElevatedButton(
              onPressed:  () => Navigator.of(context).pop(),
              child: Text('Voltar'),
                ),
              ),
             ],
          ),
        ),
    );
  }
}