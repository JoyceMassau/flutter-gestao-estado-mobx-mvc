import 'package:flutter/material.dart';

class ProdutoView extends StatefulWidget {
  @override
  _ProdutoViewState createState() => _ProdutoViewState();
}

class _ProdutoViewState extends State<ProdutoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_downward_outlined),
            tooltip: 'Voltar',
            onPressed: () => Navigator.defaultRouteName,
          ),
        ],
      ),
    );
  }
}
