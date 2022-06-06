import 'package:api/pagina/carrusel.dart';
import 'package:api/pagina/noticia.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';

import 'drawer.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final noticiasData = Provider.of<Newapi>(context);

    if (noticiasData.todasNoticiaTesla.isEmpty ||
        noticiasData.todasNoticiasApple.isEmpty ||
        noticiasData.todasNoticias.isEmpty ||
        noticiasData.todasNoticiaBusiness.isEmpty) {
      return Container(
          color: const Color.fromARGB(240, 0, 24, 69),
          child: const Center(
              child: CircularProgressIndicator(
                  color: Color.fromARGB(255, 255, 255, 255))));
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(150, 92, 103, 125),
      drawer: const Drawerr(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(240, 0, 24, 69),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              "Noticia",
              style: TextStyle(
                  color: Color.fromARGB(221, 255, 255, 255),
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Todas",
              style: TextStyle(
                  color: Color.fromARGB(255, 243, 37, 33),
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        const Carrusel(),
        ListView.builder(
            padding: const EdgeInsets.all(5.0),
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                //Para anular el valor predeterminado sin clip,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                margin: const EdgeInsets.all(5),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading:
                        (noticiasData.todasNoticias[index].urlToImage) == null
                            ? Image.asset("lib/images/NotImage.png")
                            : Image.network(
                                noticiasData.todasNoticias[index].urlToImage!),
                    title: (noticiasData.todasNoticias[index].title) == null
                        ? const Text("Sin Titulo")
                        : Text(noticiasData.todasNoticias[index].title!,
                            style:
                                const TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      noticiasData.todasNoticias[index].source!.name!,
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                    trailing: const Icon(Icons.settings_ethernet_sharp),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Noticia(
                            title:
                                (noticiasData.todasNoticias[index].title == null
                                    ? "Sin Titulo"
                                    : noticiasData.todasNoticias[index].title!),
                            author: (noticiasData.todasNoticias[index].author ==
                                    null
                                ? "Sin Author"
                                : noticiasData.todasNoticias[index].author!),
                            description: (noticiasData
                                        .todasNoticias[index].description ==
                                    null
                                ? "Sin Descripcion"
                                : noticiasData
                                    .todasNoticias[index].description!),
                            url: (noticiasData.todasNoticias[index].url == null
                                ? "Sin Url"
                                : noticiasData.todasNoticias[index].url!),
                            urlToImage:
                                (noticiasData.todasNoticias[index].urlToImage ==
                                        null
                                    ? "lib/images/NotImage.png"
                                    : noticiasData
                                        .todasNoticias[index].urlToImage!),
                            content: (noticiasData
                                        .todasNoticias[index].content ==
                                    null
                                ? "Sin Contenido"
                                : noticiasData.todasNoticias[index].content!),
                            publishedAt: (noticiasData
                                .todasNoticias[index].publishedAt!),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              );
            }),
      ])),
    );
  }
}
