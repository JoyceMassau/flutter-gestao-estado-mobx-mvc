import 'package:loja_mvc_mobx/models/produto.dart';

abstract class IProdutoRepository {
  Map<String, dynamic> toMap(Produto produto);
  Future save(Produto produto);
}