// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';

class Noticia extends StatelessWidget {
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? content;
  final DateTime? publishedAt;

  const Noticia({
    Key? key,
    this.publishedAt,
    this.title,
    this.author,
    this.description,
    this.url,
    this.urlToImage,
    this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 115, 120, 129),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(240, 0, 24, 69),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                "New",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 222, 221),
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Center(
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.black,
                        color: const Color.fromARGB(255, 234, 234, 234),
                        child: SizedBox(
                          width: 400,
                          // height: 700,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 160,
                                  child: CircleAvatar(
                                    backgroundImage:
                                        NetworkImage("$urlToImage"),
                                    radius: 150,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 250, 250, 250),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    '$title',
                                    style: const TextStyle(
                                      fontSize: 30,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 219, 219, 219),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    '$content',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: const Color.fromARGB(255, 0, 0, 0)
                                          .withOpacity(1),
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(240, 0, 24, 69),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'Descripcion',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(
                                              255, 255, 255, 255)
                                          .withOpacity(.8),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 219, 219, 219),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    '$description',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black.withOpacity(.8),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(240, 0, 24, 69),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'Author: $author',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: const Color.fromARGB(
                                              255, 255, 255, 255)
                                          .withOpacity(0.8),
                                    ),
                                  ),
                                ),
                                Text("$publishedAt"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
