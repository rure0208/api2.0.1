import 'package:flutter/material.dart';

class SinCuenta extends StatefulWidget {
  SinCuenta({Key? key}) : super(key: key);

  @override
  State<SinCuenta> createState() => _SinCuentaState();
}

class _SinCuentaState extends State<SinCuenta> {
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
