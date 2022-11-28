import 'package:flutter/material.dart';
import 'package:toursim_app/models/user.dart';
import 'dart:convert';

import 'package:toursim_app/repository/firebase_api.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _repPassword = TextEditingController();
  final FirebaseApi _firebaseApi = FirebaseApi();
  

  String _data ="";

  void _showMsg(String mensaje){
    final Scaffold = ScaffoldMessenger.of(context);
    Scaffold.showSnackBar(
        SnackBar(content: Text(mensaje),
        action: SnackBarAction(
          label: 'Aceptar', onPressed: Scaffold.hideCurrentSnackBar))
    );
  }

  void _onRegisterButtonClicked(){
    setState(() {
      if(_password.text==_repPassword.text){
        var user = User(_email.text, _password.text);
      } else{
        _showMsg("No coinciden contraseñas");
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Center(
          child: SingleChildScrollView (
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Image(image: AssetImage('assets/images/logo.png')),
                const SizedBox(
                  height: 16.7,
                ),
                TextFormField(
                    controller: _email,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Ingresa Correo'),
                    keyboardType: TextInputType.emailAddress),
                TextFormField(
                    controller: _password,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Ingresa Contraseña'),
                    keyboardType: TextInputType.text),
                TextFormField(
                    controller: _repPassword,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Confirme Contraseña'),
                    keyboardType: TextInputType.text),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 16)
                  ),
                    onPressed: (){
                      _onRegisterButtonClicked();
                    },
                    child: const Text("Registrarse ")),
              ],
            ),
          )
        )
      ),
    );
  }
}
