import 'package:loja_mvc_mobx/repositories/databases/dao/produto_repository_dao.dart';
import 'package:mobx/mobx.dart';
part 'produto_controller.g.dart';

class ProdutoController = _ProdutoController with _$ProdutoController;

abstract class _ProdutoController with Store {
  ProdutoRepositoryDao _produtoRepositoryDao;

  _ProdutoController() {
    _produtoRepositoryDao = ProdutoRepositoryDao();
  }

  @observable
  String nome = '';

  @observable
  String preco = '';

  @action
  void setNome(String value) => nome = value;

  @action
  void setPreco(String value) => preco = value;

  @computed
  bool get validaNomeVazio => nome.length > 0;

  @computed
  bool get validaPrecoVazio => preco.length > 0;

  @computed
  bool get formularioValido => nome.length > 0 && preco.length > 0;

}