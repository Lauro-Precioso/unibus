import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

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
        title: Text("Login"),
        backgroundColor: Colors.green,
        
      ),
      body: Center( child :Container(
        height: 800,
        width: 800,
        child: Align(
          alignment: Alignment.center,
        child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nome do Aluno ou motorista',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Senha',
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 20,
              child: ElevatedButton(
              
              onPressed:  () {Navigator.of(context).pushNamed('/aluno');},
              child: 
                Text('Login'),
                ),
              ),
             ],
          ),
        ),),),),
    );
  }
}