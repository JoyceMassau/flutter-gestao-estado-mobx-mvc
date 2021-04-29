import 'package:flutter/material.dart';
import 'package:loja_mvc_mobx/views/produtos/produto_list.dart';

void main() {
  runApp(Inicio());
}

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => ProdutoList(),
      },
      initialRoute: '/',
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}