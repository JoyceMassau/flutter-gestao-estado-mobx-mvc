import 'package:loja_mvc_mobx/interface/produto_repository_interface.dart';
import 'package:loja_mvc_mobx/models/produto.dart';
import 'package:loja_mvc_mobx/repositories/databases/app_database.dart';
import 'package:sqflite/sqflite.dart';

class ProdutoRepositoryDao implements IProdutoRepository {
  static final String tableSql = 'CREATE TABLE produto('
  'id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,'
  'nome TEXT,'
  'preco TEXT)';

  static const String _tableName = 'produto';
  static const String _id = 'id';
  static const String _nome = 'nome';
  static const String _preco = 'preco';

  @override
  Map<String, dynamic> toMap(Produto produto) {
    final Map<String, dynamic> produtoMap = Map();

    produtoMap[_id] = produto.id;
    produtoMap[_nome] = produto.nome;
    produtoMap[_preco] = produto.preco;

    return produtoMap;
  }

  @override
  Future save(Produto produto) async {
    final Database db = await getDatabase();
    Map<String, dynamic> produtoMap = toMap(produto);

    return db.insert(_tableName, produtoMap, conflictAlgorithm: ConflictAlgorithm.ignore);
  }
}