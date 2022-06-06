import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import 'carrusel.dart';
import 'drawer.dart';
import 'noticia.dart';

class Apple extends StatelessWidget {
  const Apple({Key? key}) : super(key: key);

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
              "Apple",
              style: TextStyle(
                  color: Color.fromARGB(255, 243, 37, 33),
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        //elevation: 0.0,
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
                                .todasNoticiasApple[index].urlToImage) ==
                            null
                        ? Image.asset("lib/images/NotImage.png")
                        : Image.network(
                            noticiasData.todasNoticiasApple[index].urlToImage!),
                    title: Text(noticiasData.todasNoticiasApple[index].title!,
                        style: const TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      noticiasData.todasNoticiasApple[index].source!.name!,
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                    trailing: const Icon(Icons.settings_ethernet_sharp),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Noticia(
                            title:
                                (noticiasData.todasNoticiasApple[index].title ==
                                        null
                                    ? "Sin Titulo"
                                    : noticiasData
                                        .todasNoticiasApple[index].title!),
                            author: (noticiasData
                                        .todasNoticiasApple[index].author ==
                                    null
                                ? "Sin Author"
                                : noticiasData
                                    .todasNoticiasApple[index].author!),
                            description: (noticiasData.todasNoticiasApple[index]
                                        .description ==
                                    null
                                ? "Sin Descripcion"
                                : noticiasData
                                    .todasNoticiasApple[index].description!),
                            url: (noticiasData.todasNoticiasApple[index].url ==
                                    null
                                ? "Sin Url"
                                : noticiasData.todasNoticiasApple[index].url!),
                            urlToImage: (noticiasData
                                        .todasNoticiasApple[index].urlToImage ==
                                    null
                                ? "lib/images/NotImage.png"
                                : noticiasData
                                    .todasNoticiasApple[index].urlToImage!),
                            content: (noticiasData
                                        .todasNoticiasApple[index].content ==
                                    null
                                ? "Sin Contenido"
                                : noticiasData
                                    .todasNoticiasApple[index].content!),
                            publishedAt: (noticiasData
                                .todasNoticiasApple[index].publishedAt!),
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
