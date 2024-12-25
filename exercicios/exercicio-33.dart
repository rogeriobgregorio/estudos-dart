/*
Crie três vetores, chamados vetorInteiro, vetorString e vetorDouble. Cada um destes vetores deverá conter
quatro valores, sendo o primeiro com valores inteiros, o segundo com strings e o terceiro com valores decimais.
Declarados os vetores, utilize a função de união concat() de duas maneiras diferentes para unir os vetores, e
mostre o resultado no console. Todos os elementos do vetor resultado deverão aparecer no console.
*/

void main() {
  // Declaração dos vetores
  List<int> vetorInteiro = [1, 2, 3, 4];
  List<String> vetorString = ["um", "dois", "três", "quatro"];
  List<double> vetorDouble = [1.1, 2.2, 3.3, 4.4];

  // União dos vetores usando concat() de duas maneiras diferentes

  // Primeira maneira: concatenando dois vetores (vetorInteiro + vetorString)
  List<dynamic> resultado1 = []
    ..addAll(vetorInteiro)
    ..addAll(vetorString);

  // Segunda maneira: concatenando os três vetores (vetorInteiro + vetorString + vetorDouble)
  List<dynamic> resultado2 = []
    ..addAll(vetorInteiro)
    ..addAll(vetorString)
    ..addAll(vetorDouble);

  print("Resultado 1 (vetorInteiro + vetorString):");
  print(resultado1);

  print("Resultado 2 (vetorInteiro + vetorString + vetorDouble):");
  print(resultado2);
}

