/*
Escreva um algoritmo que leia o código de um aluno e suas três notas. Calcule a média ponderada do
aluno, considerando que o peso para a maior nota seja 4 e para as duas restantes, 3. Mostre o código do
aluno, suas três notas, a média calculada e uma mensagem "APROVADO" se a média for maior ou igual a 5 e
"REPROVADO" se a média for menor que 5. Repita a operação até que o código lido seja negativo.
*/

import 'dart:io';

void main() {
  while (true) {
    // Lendo o código do aluno
    print('Digite o código do aluno (negativo para sair):');
    int codigo = int.parse(stdin.readLineSync()!);

    if (codigo < 0) {
      break; // Sai do loop se o código for negativo
    }

    // Lendo as três notas do aluno
    print('Digite a primeira nota:');
    double nota1 = double.parse(stdin.readLineSync()!);

    print('Digite a segunda nota:');
    double nota2 = double.parse(stdin.readLineSync()!);

    print('Digite a terceira nota:');
    double nota3 = double.parse(stdin.readLineSync()!);

    // Calculando a média ponderada
    List<double> notas = [nota1, nota2, nota3];
    notas
        .sort((a, b) => b.compareTo(a)); // Ordena as notas em ordem decrescente

    double media = (notas[0] * 4 + notas[1] * 3 + notas[2] * 3) / 10;

    // Exibindo os resultados
    print('Código do aluno: $codigo');
    print('Notas: $nota1, $nota2, $nota3');
    print('Média ponderada: ${media.toStringAsFixed(2)}');

    if (media >= 5) {
      print('APROVADO');
    } else {
      print('REPROVADO');
    }

    print('---');
  }
}
