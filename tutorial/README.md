# Criando uma API REST com Dart e um ORM

Este tutorial apresenta um guia completo para criar uma API RESTful usando Dart com um ORM (Jaguar). Vamos abordar desde a configuração inicial do projeto até funcionalidades mais avançadas como tratamento de erros, autenticação/autorizacão com JWT e manipulação de relacionamentos no banco de dados.

## Requisitos

- Dart SDK instalado (versão 3.0 ou superior).
- Um editor de código como o VS Code ou IntelliJ IDEA.
- Docker (opcional, para banco de dados).

## 1. Configuração do Projeto

### Passo 1: Criando o Projeto

1. Crie uma nova pasta para o projeto e inicialize um novo projeto Dart:
   ```bash
   dart create -t console-full my_api
   cd my_api
   ```

2. Adicione as dependências necessárias ao `pubspec.yaml`:
   ```yaml
   dependencies:
     shelf: ^1.4.0
     shelf_router: ^1.1.1
     shelf_jwt_auth: ^1.0.1
     jaguar_orm: ^3.0.0
     sqlite3: ^2.0.0
     dotenv: ^3.0.0
   ```

3. Instale as dependências:
   ```bash
   dart pub get
   ```

### Passo 2: Configurando o Ambiente

1. Crie um arquivo `.env` na raiz do projeto para armazenar as variáveis de ambiente:
   ```env
   DATABASE_URL=sqlite:memory
   JWT_SECRET=my_secret_key
   ```

2. Adicione o carregamento das variáveis no código principal (`bin/main.dart`):
   ```dart
   import 'package:dotenv/dotenv.dart' as dotenv;

   void main() {
     dotenv.load();
     final databaseUrl = dotenv.env['DATABASE_URL'];
     final jwtSecret = dotenv.env['JWT_SECRET'];

     print('Database URL: \$databaseUrl');
     print('JWT Secret: \$jwtSecret');
   }
   ```

## 2. Configurando o Banco de Dados

### Passo 1: Definindo os Modelos

Crie uma pasta `lib/models` e adicione a classe de modelo. Por exemplo, para um modelo `User`:

```dart
import 'package:jaguar_orm/jaguar_orm.dart';

class User {
  @PrimaryKey(auto: true)
  int? id;

  @Column(isNullable: false)
  late String username;

  @Column(isNullable: false)
  late String password;
}

@GenBean()
class UserBean extends Bean<User> with _UserBean {
  UserBean(Adapter adapter) : super(adapter);

  @override
  String get tableName => 'users';
}
```

### Passo 2: Configurando o Adapter e Criando o Banco

Crie uma pasta `lib/database` e configure o adapter:

```dart
import 'package:jaguar_query_sqflite/jaguar_query_sqflite.dart';
import 'package:sqlite3/sqlite3.dart';

class DatabaseConfig {
  late final SqfliteAdapter adapter;

  DatabaseConfig() {
    final sqlite = sqlite3.openInMemory();
    adapter = SqfliteAdapter(sqlite);
  }

  Future<void> initialize() async {
    await adapter.connect();
  }
}
```

### Passo 3: Migrando o Banco de Dados

Crie as tabelas no banco durante a inicialização:

```dart
void main() async {
  dotenv.load();

  final dbConfig = DatabaseConfig();
  await dbConfig.initialize();

  final userBean = UserBean(dbConfig.adapter);
  await userBean.createTable(ifNotExists: true);

  print('Banco de dados inicializado!');
}
```

## 3. Criando a API REST

### Passo 1: Configurando o Servidor

Use o pacote `shelf` para configurar o servidor:

```dart
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';

void main() async {
  final router = Router();

  router.get('/', (Request request) {
    return Response.ok('API funcionando!');
  });

  final handler = Pipeline().addMiddleware(logRequests()).addHandler(router);

  final server = await io.serve(handler, 'localhost', 8080);
  print('Servidor rodando em http://localhost:\${server.port}');
}
```

### Passo 2: Endpoints de CRUD

Adicione rotas CRUD para `User`:

```dart
router.post('/users', (Request request) async {
  final payload = await request.readAsString();
  final data = jsonDecode(payload);

  final user = User()
    ..username = data['username']
    ..password = data['password'];

  await userBean.insert(user);
  return Response.ok('Usuário criado!');
});

router.get('/users', (Request request) async {
  final users = await userBean.getAll();
  return Response.ok(jsonEncode(users));
});
```

## 4. Autenticação e Autorização com JWT

### Passo 1: Gerando Tokens

Use o pacote `shelf_jwt_auth` para gerar e validar tokens:

```dart
import 'package:jose/jose.dart';

String generateToken(String userId) {
  final jwt = JsonWebToken.sign(
    JsonWebSignatureHeader(JsonWebAlgorithm.hs256),
    {'sub': userId, 'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000},
    key: JsonWebKey.fromUtf8Bytes(utf8.encode(dotenv.env['JWT_SECRET']!)),
  );
  return jwt.toCompactSerialization();
}
```

### Passo 2: Protegendo Rotas

Proteja rotas usando middleware:

```dart
router.get('/protected', (Request request) {
  return Response.ok('Acesso autorizado!');
}, middleware: verifyJwtMiddleware(dotenv.env['JWT_SECRET']!));
```

## 5. Tratamento de Erros

Use middleware para capturar e tratar erros:

```dart
Middleware errorHandler() {
  return (Handler innerHandler) {
    return (Request request) async {
      try {
        return await innerHandler(request);
      } catch (e) {
        return Response.internalServerError(body: 'Erro interno: \$e');
      }
    };
  };
}
```

Adicione ao pipeline:

```dart
final handler = Pipeline()
  .addMiddleware(logRequests())
  .addMiddleware(errorHandler())
  .addHandler(router);
```

## 6. Manipulação de Relacionamentos

Crie relacionamentos no banco de dados. Por exemplo, para adicionar uma relação `Post` para `User`:

```dart
class Post {
  @PrimaryKey(auto: true)
  int? id;

  @Column(isNullable: false)
  late String title;

  @BelongsTo(UserBean)
  int? userId;
}

@GenBean()
class PostBean extends Bean<Post> with _PostBean {
  PostBean(Adapter adapter) : super(adapter);

  @override
  String get tableName => 'posts';
}
```

Adicione a relação no `UserBean`:

```dart
class UserBean extends Bean<User> with _UserBean {
  UserBean(Adapter adapter) : super(adapter);

  final posts = HasMany<PostBean, Post>(this);
}
```

## Conclusão

Neste tutorial, você aprendeu a criar uma API REST com Dart, incluindo CRUD, autenticação JWT, tratamento de erros e manipulação de relacionamentos.

