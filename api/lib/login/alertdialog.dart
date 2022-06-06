import 'package:flutter/material.dart';

class Alertas extends StatefulWidget {
  Alertas({Key? key}) : super(key: key);

  @override
  State<Alertas> createState() => _AlertasState();
}

class _AlertasState extends State<Alertas> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Notificaciones'),
      content: const Text(
          "Correo o Contraseña no validos favor de verificar los datos"),
      actions: <Widget>[
        FloatingActionButton(
            backgroundColor: const Color.fromARGB(240, 0, 24, 69),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Ok")),
      ],
    );
  }
}
