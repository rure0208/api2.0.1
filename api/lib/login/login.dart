import 'package:api/login/alertdialog.dart';
import 'package:api/login/sinCuenta.dart';
import 'package:flutter/material.dart';

import '../pagina/Navegacion.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _nombre = "";
  String _password = "";
  TextEditingController nameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(240, 0, 24, 69),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              "Noticias",
              style: TextStyle(
                  color: Color.fromARGB(221, 255, 255, 255),
                  fontWeight: FontWeight.w600,
                  fontSize: 30),
            ),
          ],
        ),
        //elevation: 0.0,
      ),
      body: Padding(
          padding: const EdgeInsets.all(5),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(35),
                  child: const Text(
                    "Iniciar Sesion",
                    style: TextStyle(
                        color: Color.fromARGB(255, 2, 62, 125),
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  )),
              Container(
                padding: const EdgeInsets.all(15),
                child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Usuario',
                    ),
                    onChanged: (valor) => setState(() {
                          _nombre = valor;
                        })),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Contraseña',
                    ),
                    onChanged: (valor) => setState(() {
                          _password = valor;
                        })),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                child: ElevatedButton(
                    onPressed: () {
                      if (_nombre == "er388928@gmail.com" &&
                          _password == "010203") {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Navegacion()),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Alertas()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(240, 0, 24, 69)),
                    child: const Text('Ingresar')),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SinCuenta()),
                          );
                        },
                        child: const Text(
                          'Crear Cuenta',
                          style: TextStyle(
                              color: const Color.fromARGB(240, 0, 24, 69),
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        )),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
