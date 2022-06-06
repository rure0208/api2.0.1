import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import 'carrusel.dart';
import 'drawer.dart';
import 'noticia.dart';

class Tesla extends StatelessWidget {
  const Tesla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final noticiasData = Provider.of<Newapi>(context);

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
              "Tesla",
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
                    leading: (noticiasData
                                .todasNoticiaTesla[index].urlToImage) ==
                            null
                        ? Image.asset("lib/images/NotImage.png")
                        : Image.network(
                            noticiasData.todasNoticiaTesla[index].urlToImage!),
                    title: Text(noticiasData.todasNoticiaTesla[index].title!,
                        style: const TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      noticiasData.todasNoticiaTesla[index].source!.name!,
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                    trailing: const Icon(Icons.settings_ethernet_sharp),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Noticia(
                            title: (noticiasData
                                        .todasNoticiaTesla[index].title ==
                                    null
                                ? "Sin Titulo"
                                : noticiasData.todasNoticiaTesla[index].title!),
                            author:
                                (noticiasData.todasNoticiaTesla[index].author ==
                                        null
                                    ? "Sin Author"
                                    : noticiasData
                                        .todasNoticiaTesla[index].author!),
                            description: (noticiasData
                                        .todasNoticiaTesla[index].description ==
                                    null
                                ? "Sin Descripcion"
                                : noticiasData
                                    .todasNoticiaTesla[index].description!),
                            url: (noticiasData.todasNoticiaTesla[index].url ==
                                    null
                                ? "Sin Url"
                                : noticiasData.todasNoticiaTesla[index].url!),
                            urlToImage: (noticiasData
                                        .todasNoticiaTesla[index].urlToImage ==
                                    null
                                ? "lib/images/NotImage.png"
                                : noticiasData
                                    .todasNoticiaTesla[index].urlToImage!),
                            content: (noticiasData
                                        .todasNoticiaTesla[index].content ==
                                    null
                                ? "Sin Contenido"
                                : noticiasData
                                    .todasNoticiaTesla[index].content!),
                            publishedAt: (noticiasData
                                .todasNoticiaTesla[index].publishedAt!),
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
