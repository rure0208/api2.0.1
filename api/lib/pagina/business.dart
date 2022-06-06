import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import 'carrusel.dart';
import 'drawer.dart';
import 'noticia.dart';

class Business extends StatelessWidget {
  const Business({Key? key}) : super(key: key);

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
              "Business",
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
                        (noticiasData.todasNoticiaBusiness[index].urlToImage) ==
                                null
                            ? Image.asset("lib/images/NotImage.png")
                            : Image.network(noticiasData
                                .todasNoticiaBusiness[index].urlToImage!),
                    title: Text(noticiasData.todasNoticiaBusiness[index].title!,
                        style: const TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: Text(
                      noticiasData.todasNoticiaBusiness[index].source!.name!,
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                    trailing: const Icon(Icons.settings_ethernet_sharp),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Noticia(
                            title: (noticiasData
                                        .todasNoticiaBusiness[index].title ==
                                    null
                                ? "Sin Titulo"
                                : noticiasData
                                    .todasNoticiaBusiness[index].title!),
                            author: (noticiasData
                                        .todasNoticiaBusiness[index].author ==
                                    null
                                ? "Sin Author"
                                : noticiasData
                                    .todasNoticiaBusiness[index].author!),
                            description: (noticiasData
                                        .todasNoticiaBusiness[index]
                                        .description ==
                                    null
                                ? "Sin Descripcion"
                                : noticiasData
                                    .todasNoticiaBusiness[index].description!),
                            url:
                                (noticiasData.todasNoticiaBusiness[index].url ==
                                        null
                                    ? "Sin Url"
                                    : noticiasData
                                        .todasNoticiaBusiness[index].url!),
                            urlToImage: (noticiasData
                                        .todasNoticiaBusiness[index]
                                        .urlToImage ==
                                    null
                                ? "lib/images/NotImage.png"
                                : noticiasData
                                    .todasNoticiaBusiness[index].urlToImage!),
                            content: (noticiasData
                                        .todasNoticiaBusiness[index].content ==
                                    null
                                ? "Sin Contenido"
                                : noticiasData
                                    .todasNoticiaBusiness[index].content!),
                            publishedAt: (noticiasData
                                .todasNoticiaBusiness[index].publishedAt!),
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
