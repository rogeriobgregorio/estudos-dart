/*
Criar uma função para calcular o valor a ser pago de anuidade de uma associação. A função recebe como
parâmetro um inteiro que representa o mês (1 - janeiro, 2 - fevereiro…) que foi paga e o valor da anuidade. A
anuidade deve ser paga no mês de janeiro. Por mês, é cobrado 5% de juros (sob o regime de juros
compostos). O retorno deve ser o valor a ser pago para o respectivo mês escolhido.
*/

import 'dart:math';

double calcularAnuidade(int mes, double valorAnuidade) {
  int mesesDeAtraso = mes - 1;

  if (mesesDeAtraso < 0) {
    print('Pagamento deve ser feito em janeiro.');
    return valorAnuidade;
  }

  double taxaDeJuros = 0.05;
  double valorComJuros = valorAnuidade * pow(1 + taxaDeJuros, mesesDeAtraso);

  return valorComJuros;
}

void main() {
  double valorAnuidade = 100.00;

  print('Valor a ser pago em janeiro: R\$${calcularAnuidade(1, valorAnuidade).toStringAsFixed(2)}');
  print('Valor a ser pago em fevereiro: R\$${calcularAnuidade(2, valorAnuidade).toStringAsFixed(2)}');
  print('Valor a ser pago em março: R\$${calcularAnuidade(3, valorAnuidade).toStringAsFixed(2)}');
  print('Valor a ser pago em abril: R\$${calcularAnuidade(4, valorAnuidade).toStringAsFixed(2)}');
  print('Valor a ser pago em maio: R\$${calcularAnuidade(5, valorAnuidade).toStringAsFixed(2)}');
}
