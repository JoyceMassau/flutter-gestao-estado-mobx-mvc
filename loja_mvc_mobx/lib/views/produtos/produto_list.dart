import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ProdutoList extends StatefulWidget {
  @override
  _ProdutoListState createState() => _ProdutoListState();
}

class _ProdutoListState extends State<ProdutoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: kToolbarHeight,
          child: Image.network(
            'https://logospng.org/download/mercado-livre/logo-mercado-livre-256.png',
            height: 50.0,
          ),
        ),
        toolbarHeight: kToolbarHeight + 20.0,
      ),
      body: Container(
        child: Observer(
          builder: (context) {

          },
        ),
      ),
    );
  }
}
