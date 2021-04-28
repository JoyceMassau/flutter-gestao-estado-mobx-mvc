# flutter-gestao-estado-mobx-mvc
Aplicação com finalidade de testar ferramenta de gestão de estados utilizando MVC

### Primeiros passos: Importação no Pubspec.yaml

Necessário importar nas **dependencies**
- mobx
- flutter_mobx

Bem como importar nas **dev_dependencies**
- build_runner
- mobx_codegen

### Criando estrutura MVC

Dentro do diretório lib, criar os seguintes diretórios:
- controllers
- interface
- models
- repositories
- shared
- views

#### controllers
#### interface

Interfaces são benéficas em questão de injeção de dependência, pois não é mais necessário dar import em vários arquivos, apenas implementar a interface, possibilitando criar uma interface com vários métodos que você quer que tenha em determinadas classes e essas classe serão obrigadas a implementar esses métodos.

#### models
#### repositories

Aqui será armazenado código referente a dados. Quando vamos persistir informações no DAO ou consumir uma API, será feito aqui.
Também serão implementados métodos com o mesmo nome de métodos definidos lá na interface[interface](https://github.com/JoyceMassau/flutter-gestao-estado-mobx-mvc#interface) e, como as classes criadas nos arquivos dentro deste diretório implementam a interface, eles também substituem o método herdado da interface

#### shared

Aqui haverão arquivos que poderão ser compartilhados no App todo.

#### views