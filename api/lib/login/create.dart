import 'package:flutter/material.dart';

class Cuenta extends StatefulWidget {
  const Cuenta({Key? key}) : super(key: key);

  @override
  State<Cuenta> createState() => _CuentaState();
}

class _CuentaState extends State<Cuenta> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Notificacion'),
      content: const Text("Sin Miedo Al Exito"),
      actions: <Widget>[
        FloatingActionButton(
            backgroundColor: const Color.fromARGB(240, 0, 24, 69),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Let'sGo")),
      ],
    );
  }
}
