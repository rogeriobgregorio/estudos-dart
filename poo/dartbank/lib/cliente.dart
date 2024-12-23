class Clinte {
  String nome;
  String cpf;
  String profissao;

  Clinte(
    {required this.nome, 
    required this.cpf, 
    required this.profissao}
  );

  @override
  String toString() {
    return '''
Cliente {
  nome: $nome,
  cpf: $cpf,
  profissão: $profissao
}
''';
  }
}
