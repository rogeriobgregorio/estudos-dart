// **Arrow Function**: Forma concisa de declarar funções.
int soma(int a, int b) => a + b;

// **Call**: Método de chamada de função com determinado contexto.
class Pessoa {
  String nome;

  Pessoa(this.nome);

  void saudacao() {
    print('Olá, meu nome é $nome');
  }

  // Método que simula o comportamento de "call"
  void Function() call() {
    return () {
      saudacao(); // Chama o método dentro do contexto da instância.
    };
  }
}

// **Callback**: Função passada como argumento para outra função.
void executarComCallback(void Function() callback) {
  print('Antes de chamar o callback');
  callback();
  print('Depois de chamar o callback');
}

// **Classe**: Estrutura que define objetos e comportamentos.
class Carro {
  String modelo;
  int ano;

  Carro(this.modelo, this.ano);

  void exibirInfo() {
    print('Carro modelo $modelo de $ano');
  }
}

// **Factory**: Função que cria instâncias de objetos.
class Livro {
  String titulo;

  Livro(this.titulo);

  static Livro criarLivro(String titulo) {
    return Livro(titulo);
  }
}

// **Contexto Lexico**: O escopo de uma função determina o valor do 'this'.
class Animal {
  String nome;

  Animal(this.nome);

  void falar() {
    print('$nome está falando!');
  }

  void executarFalar() {
    var f = () => falar(); // Arrow function que usa 'this' no contexto.
    f();
  }
}

// **Função Construtora**: Função que cria objetos.
class Estudante {
  String nome;

  Estudante(this.nome);

  void mostrarNome() {
    print('Nome do estudante: $nome');
  }
}

// **Função Anônima**: Função sem nome, usada para expressões rápidas.
void exemploFuncaoAnonima() {
  var resultado =
      [1, 2, 3].map((num) => num * 2).toList(); // Função anônima no map
  print(resultado);
}

// **Função Autoinvocada**: Usando uma função anônima imediatamente.
void exemploFuncaoAutoinvocada() {
  (() {
    print('Função autoinvocada!');
  })();
}

// **Parâmetro Padrão**: Valor padrão para parâmetros de funções.
void saudacaoComParametro(String nome, [String saudacao = 'Olá']) {
  print('$saudacao, $nome!');
}

// **Retornos Opcionais**: Função que retorna um valor ou nada.
int? retornarNumero(bool retornar) {
  if (retornar) {
    return 10;
  }
  return null; // Retorna null, ou seja, não retorna um valor.
}

// **Parâmetros Variáveis**: Aceita um número variável de argumentos.
void imprimirNomes(List<String> nomes) {
  for (var nome in nomes) {
    print(nome);
  }
}

void imprimirParametrosVariaveis(String nome, [String? sobrenome]) {
  print('Nome: $nome');
  if (sobrenome != null) {
    print('Sobrenome: $sobrenome');
  }
}

// **This e Bind**: O 'this' refere-se ao contexto do objeto atual.
class PessoaInfo {
  String nome;

  PessoaInfo(this.nome);

  void mostrarNome() {
    print('O nome é $nome');
  }
}

void exemploBind() {
  var pessoa = PessoaInfo('João');
  var mostrarNome = pessoa.mostrarNome;
  mostrarNome(); // O 'this' é automaticamente vinculado à instância de 'pessoa'.
}

// **Tipos Declaração**: Declaração de funções e variáveis com tipos explícitos.
void exemploTiposDeclaracao() {
  int idade = 25;
  String nome = 'Alice';
  double altura = 1.75;
  var item = 'item dinâmico'; // 'var' usa tipo dinâmico

  print('Idade: $idade, Nome: $nome, Altura: $altura, Item: $item');
}

void main() {
  // Testando as funções e classes.
  print(soma(10, 5)); // Arrow function

  // Call
  Pessoa pessoa = Pessoa('Carlos');
  var chamada = pessoa.call();
  chamada();

  // Callback
  executarComCallback(() => print('Callback executado!'));

  // Classe
  Carro carro = Carro('Fusca', 1980);
  carro.exibirInfo();

  // Factory
  Livro livro = Livro.criarLivro('Dart para Iniciantes');
  print('Livro criado: ${livro.titulo}');

  // Contexto Lexico
  Animal animal = Animal('Cachorro');
  animal.executarFalar();

  // Função Construtora
  Estudante estudante = Estudante('Bruna');
  estudante.mostrarNome();

  // Função Anônima
  exemploFuncaoAnonima();

  // Função Autoinvocada
  exemploFuncaoAutoinvocada();

  // Parâmetro Padrão
  saudacaoComParametro('João');
  saudacaoComParametro('Maria', 'Bom dia');

  // Retornos Opcionais
  var numero = retornarNumero(true);
  print('Número retornado: $numero');

  // Parâmetros Variáveis
  imprimirNomes(['Ana', 'Carlos', 'Beatriz']);

  // Parâmetros Variáveis com valor opcional
  imprimirParametrosVariaveis('Lucas');
  imprimirParametrosVariaveis('Rafaela', 'Costa');

  // This e Bind
  exemploBind();

  // Tipos Declaração
  exemploTiposDeclaracao();
}
