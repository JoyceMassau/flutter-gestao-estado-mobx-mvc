import 'package:flutter/material.dart';
import 'package:loja_mvc_mobx/controllers/produto_controller.dart';

class ProdutoAdd extends StatefulWidget {
  @override
  _ProdutoAddState createState() => _ProdutoAddState();
}

class _ProdutoAddState extends State<ProdutoAdd> {
  ProdutoController produtoController = ProdutoController();

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
      body: LayoutBuilder(
        builder: (context, constaints) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                onChanged: produtoController.validaNomeVazio,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  prefix: Icon(
                    Icons.people,
                  ),
                ),
              ),
              TextField(
                onChanged: produtoController.validaPrecoVazio,
                decoration: InputDecoration(
                  labelText: 'Preço',
                  prefix: Icon(
                    Icons.people,
                  ),
                ),
              ),
              ElevatedButton(
                child: Text('Gravar'),
                onPressed: produtoController.formularioValido ? () {

                } : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
