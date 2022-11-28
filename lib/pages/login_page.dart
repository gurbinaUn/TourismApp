import 'package:flutter/material.dart';
import 'package:toursim_app/pages/poi_page.dart';
import 'package:toursim_app/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
          child: Center(
            child:SingleChildScrollView(
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
                            labelText: 'Ingresa Constraseña'),
                        keyboardType: TextInputType.text),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 16)
                        ),
                        onPressed: () {
                          //Navigator.push(context,
                              //MaterialPageRoute(builder: (context) => const PoiPage()));
                        },
                        child: const Text("Iniciar Sesión")),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16)
                      ),
                        onPressed: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const RegisterPage()));

                        },
                        child: const Text("No tengo cuenta"))
                  ]
              ),
            )
          ),
        )
    );
  }
}
