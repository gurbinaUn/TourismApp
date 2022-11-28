import 'package:flutter/material.dart';

class PoiPage extends StatefulWidget {
  const PoiPage({Key? key}) : super(key: key);

  @override
  State<PoiPage> createState() => _PoiPageState();
}

class _PoiPageState extends State<PoiPage> {
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
      Image(image: AssetImage('assets/images/logo.png')),
      Text("Ciudad:xxx"),
      Text("Departamento:"),
      Text("Temperatura: "),
      Text("Descripción"),

    ]
    )
    )
    )
    )
    );
  }
}
