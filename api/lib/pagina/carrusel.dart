import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import 'noticia.dart';

class Carrusel extends StatelessWidget {
  const Carrusel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int min = 0;
    int max = 15;
    final int random = Random().nextInt((max - min)) + min;
    final noticiasData = Provider.of<Newapi>(context);
    return CarouselSlider(
      items: [
        Center(
          child: Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width - 46.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 151, 157, 172),
                  Color.fromARGB(255, 92, 103, 125),
                  Color.fromARGB(255, 3, 83, 164),
                  Color.fromARGB(255, 0, 24, 69),
                ],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 20,
                  left: 20,
                  bottom: 0,
                  top: 5,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => todo(noticiasData, random),
                        ),
                      );
                    },
                    child:
                        (noticiasData.todasNoticias[random].urlToImage) == null
                            ? Image.asset("lib/images/NotImage.png")
                            : Image.network(
                                noticiasData.todasNoticias[random].urlToImage!,
                                height: 400,
                                alignment: Alignment.topCenter,
                                width: 207,
                                fit: BoxFit.cover,
                                color: const Color.fromARGB(255, 255, 255, 255),
                                colorBlendMode: BlendMode.modulate,
                              ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width - 46.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 151, 157, 172),
                  Color.fromARGB(255, 92, 103, 125),
                  Color.fromARGB(255, 3, 83, 164),
                  Color.fromARGB(255, 0, 24, 69),
                ],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 20,
                  left: 20,
                  bottom: 0,
                  top: 5,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => business(noticiasData, random),
                        ),
                      );
                    },
                    child: (noticiasData
                                .todasNoticiaBusiness[random].urlToImage) ==
                            null
                        ? Image.asset("lib/images/NotImage.png")
                        : Image.network(
                            noticiasData
                                .todasNoticiaBusiness[random].urlToImage!,
                            height: 400,
                            alignment: Alignment.topCenter,
                            width: 207,
                            fit: BoxFit.cover,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            colorBlendMode: BlendMode.modulate,
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width - 46.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 151, 157, 172),
                  Color.fromARGB(255, 92, 103, 125),
                  Color.fromARGB(255, 3, 83, 164),
                  Color.fromARGB(255, 0, 24, 69),
                ],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 20,
                  left: 20,
                  bottom: 0,
                  top: 5,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => tesla(noticiasData, random),
                        ),
                      );
                    },
                    child: (noticiasData
                                .todasNoticiaTesla[random].urlToImage) ==
                            null
                        ? Image.asset("lib/images/NotImage.png")
                        : Image.network(
                            noticiasData.todasNoticiaTesla[random].urlToImage!,
                            height: 400,
                            alignment: Alignment.topCenter,
                            width: 207,
                            fit: BoxFit.cover,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            colorBlendMode: BlendMode.modulate,
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width - 46.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 151, 157, 172),
                  Color.fromARGB(255, 92, 103, 125),
                  Color.fromARGB(255, 3, 83, 164),
                  Color.fromARGB(255, 0, 24, 69),
                ],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 20,
                  left: 20,
                  bottom: 0,
                  top: 5,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        apple(noticiasData, random),
                      );
                    },
                    child: (noticiasData
                                .todasNoticiasApple[random].urlToImage) ==
                            null
                        ? Image.asset("lib/images/NotImage.png")
                        : Image.network(
                            noticiasData.todasNoticiasApple[random].urlToImage!,
                            height: 400,
                            alignment: Alignment.topCenter,
                            width: 207,
                            fit: BoxFit.cover,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            colorBlendMode: BlendMode.modulate,
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        autoPlay: true,
        height: 220,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Noticia todo(Newapi noticiasData, int random) {
    return Noticia(
      title: (noticiasData.todasNoticias[random].title == null
          ? "Sin Titulo"
          : noticiasData.todasNoticias[random].title!),
      author: (noticiasData.todasNoticias[random].author == null
          ? "Sin Author"
          : noticiasData.todasNoticias[random].author!),
      description: (noticiasData.todasNoticias[random].description == null
          ? "Sin Descripcion"
          : noticiasData.todasNoticias[random].description!),
      url: (noticiasData.todasNoticias[random].url == null
          ? "Sin Url"
          : noticiasData.todasNoticias[random].url!),
      urlToImage: (noticiasData.todasNoticias[random].urlToImage == null
          ? "lib/images/NotImage.png"
          : noticiasData.todasNoticias[random].urlToImage!),
      content: (noticiasData.todasNoticias[random].content == null
          ? "Sin Contenido"
          : noticiasData.todasNoticias[random].content!),
      publishedAt: (noticiasData.todasNoticias[random].publishedAt!),
    );
  }

  Noticia business(Newapi noticiasData, int random) {
    return Noticia(
      title: (noticiasData.todasNoticiaBusiness[random].title == null
          ? "Sin Titulo"
          : noticiasData.todasNoticiaBusiness[random].title!),
      author: (noticiasData.todasNoticiaBusiness[random].author == null
          ? "Sin Author"
          : noticiasData.todasNoticiaBusiness[random].author!),
      description:
          (noticiasData.todasNoticiaBusiness[random].description == null
              ? "Sin Descripcion"
              : noticiasData.todasNoticiaBusiness[random].description!),
      url: (noticiasData.todasNoticiaBusiness[random].url == null
          ? "Sin Url"
          : noticiasData.todasNoticiaBusiness[random].url!),
      urlToImage: (noticiasData.todasNoticiaBusiness[random].urlToImage == null
          ? "lib/images/NotImage.png"
          : noticiasData.todasNoticiaBusiness[random].urlToImage!),
      content: (noticiasData.todasNoticiaBusiness[random].content == null
          ? "Sin Contenido"
          : noticiasData.todasNoticiaBusiness[random].content!),
      publishedAt: (noticiasData.todasNoticiaBusiness[random].publishedAt!),
    );
  }

  Noticia tesla(Newapi noticiasData, int random) {
    return Noticia(
      title: (noticiasData.todasNoticiaTesla[random].title == null
          ? "Sin Titulo"
          : noticiasData.todasNoticiaTesla[random].title!),
      author: (noticiasData.todasNoticiaTesla[random].author == null
          ? "Sin Author"
          : noticiasData.todasNoticiaTesla[random].author!),
      description: (noticiasData.todasNoticiaTesla[random].description == null
          ? "Sin Descripcion"
          : noticiasData.todasNoticiaTesla[random].description!),
      url: (noticiasData.todasNoticiaTesla[random].url == null
          ? "Sin Url"
          : noticiasData.todasNoticiaTesla[random].url!),
      urlToImage: (noticiasData.todasNoticiaTesla[random].urlToImage == null
          ? "lib/images/NotImage.png"
          : noticiasData.todasNoticiaTesla[random].urlToImage!),
      content: (noticiasData.todasNoticiaTesla[random].content == null
          ? "Sin Contenido"
          : noticiasData.todasNoticiaTesla[random].content!),
      publishedAt: (noticiasData.todasNoticiaTesla[random].publishedAt!),
    );
  }

  MaterialPageRoute<dynamic> apple(Newapi noticiasData, int random) {
    return MaterialPageRoute(
      builder: (context) => Noticia(
        title: (noticiasData.todasNoticiasApple[random].title == null
            ? "Sin Titulo"
            : noticiasData.todasNoticiasApple[random].title!),
        author: (noticiasData.todasNoticiasApple[random].author == null
            ? "Sin Author"
            : noticiasData.todasNoticiasApple[random].author!),
        description:
            (noticiasData.todasNoticiasApple[random].description == null
                ? "Sin Descripcion"
                : noticiasData.todasNoticiasApple[random].description!),
        url: (noticiasData.todasNoticiasApple[random].url == null
            ? "Sin Url"
            : noticiasData.todasNoticiasApple[random].url!),
        urlToImage: (noticiasData.todasNoticiasApple[random].urlToImage == null
            ? "lib/images/NotImage.png"
            : noticiasData.todasNoticiasApple[random].urlToImage!),
        content: (noticiasData.todasNoticiasApple[random].content == null
            ? "Sin Contenido"
            : noticiasData.todasNoticiasApple[random].content!),
        publishedAt: (noticiasData.todasNoticiasApple[random].publishedAt!),
      ),
    );
  }
}
