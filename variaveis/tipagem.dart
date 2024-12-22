void main() {
  // Tipos primitivos
  int inteiro = 10; // Tipo inteiro
  double decimal = 20.5; // Tipo double (número de ponto flutuante)
  String texto = "Olá"; // Tipo String (texto)
  bool logico = true; // Tipo booleano

  // Tipo dinâmico (pode ser qualquer tipo)
  dynamic dinamico = "Dart"; // Inicialmente uma string
  dinamico = 42; // Agora é um inteiro

  // Coleções
  List<int> lista = [1, 2, 3]; // Lista de inteiros
  Set<String> conjunto = {'A', 'B', 'C'}; // Conjunto de Strings
  Map<String, int> mapa = {
    'João': 30,
    'Maria': 25
  }; // Mapa com chave String e valor inteiro

  // Tipos nulos (nullable types)
  int? nuloInt = null; // Um inteiro que pode ser nulo
  String? nuloTexto = null; // Uma string que pode ser nula

  // Tipos especializados
  Symbol simbolo = #meuSimbolo; // Tipo Symbol (para referências eficientes de identificadores)
  Runes unicode = 'Olá'.runes; // Tipo Runes (representa caracteres Unicode)
  Object objeto = 'Eu sou um objeto'; // Tipo Object (superclasse de todos os objetos)

  // Exibindo todos os tipos
  print("Int: $inteiro, Double: $decimal, String: $texto, Bool: $logico");
  print("Dynamic: $dinamico");
  print("Lista: $lista, Conjunto: $conjunto, Mapa: $mapa");
  print("NuloInt: $nuloInt, NuloTexto: $nuloTexto");
  print("Symbol: $simbolo");
  print("Unicode Runes: $unicode");
  print("Objeto: $objeto");
}
