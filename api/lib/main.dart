import 'package:api/login/login.dart';
import 'package:api/service/new.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => Newapi(),
          ),
        ],
        child: const MaterialApp(
            debugShowCheckedModeBanner: false, home: Login()));
  }
}

class Newapi extends ChangeNotifier {
  final String _urlbase = 'newsapi.org';
  final String _apiKEY = '33fa8a67ea424185818e7b49c196d997';
  List<Article> todasNoticias = [];
  List<Article> todasNoticiasApple = [];
  List<Article> todasNoticiaTesla = [];
  List<Article> todasNoticiaBusiness = [];

  Newapi() {
    getServiceAppe();
    getService();
    getServiceTesla();
    getServiceBusinnes();
  }

  Future getService() async {
    final url = Uri.https(_urlbase, '/v2/everything', {'q': 'keyword'});
    final respuesta = await http.get(url, headers: {'X-Api-Key': _apiKEY});

    final noticias = Noticias.fromJson(respuesta.body);
    todasNoticias = noticias.articles!;
    //print(noticias);
    notifyListeners();
  }

  Future getServiceAppe() async {
    final url = Uri.https(_urlbase, '/v2/everything', {
      'q': 'apple',
      'from': '2022-06-6',
      'to': '2022-06-6',
      'sortBy': 'popularity'
    });
    final respuesta = await http.get(url, headers: {'X-Api-Key': _apiKEY});

    final apple = Noticias.fromJson(respuesta.body);
    todasNoticiasApple = apple.articles!;
    //print(apple);
    notifyListeners();
  }

  Future getServiceTesla() async {
    final url = Uri.https(_urlbase, '/v2/everything',
        {'q': 'tesla', 'from': '2022-06-7', 'sortBy': 'publishedAt'});
    final respuesta = await http.get(url, headers: {'X-Api-Key': _apiKEY});

    final tesla = Noticias.fromJson(respuesta.body);
    //print(tesla);
    todasNoticiaTesla = tesla.articles!;

    notifyListeners();
  }

  Future getServiceBusinnes() async {
    final url = Uri.https(_urlbase, '/v2/top-headlines',
        {'country': 'us', 'category': 'business'});
    final respuesta = await http.get(url, headers: {'X-Api-Key': _apiKEY});

    final business = Noticias.fromJson(respuesta.body);
    todasNoticiaBusiness = business.articles!;
    //print(business);
    notifyListeners();
  }
}
