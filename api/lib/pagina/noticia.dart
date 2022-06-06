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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          margin: const EdgeInsets.only(top: 10.0, left: 1.0),
          child: Column(
            children: [
              ("$urlToImage") == null
                  ? Image.asset("lib/images/NotImage.png")
                  : Image.network("$urlToImage"),
              ListTile(
                title: Text("$title",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    )),
                subtitle: Text(
                  "$description",
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '$content',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '$author',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
