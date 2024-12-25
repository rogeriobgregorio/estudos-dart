/* Elabore duas funções que recebem três parâmetros: capital inicial, taxa de juros e tempo de aplicação.A
primeira função retornará o montante da aplicação financeira sob o regime de juros simples e a segunda
retornará o valor da aplicação sob o regime de juros compostos */

import 'dart:math';

double calcularJurosSimples(double capital, double taxa, int tempo) {
  return capital + (capital * taxa * tempo);
}

double calcularJurosCompostos(double capital, double taxa, int tempo) {
  return capital * pow(1 + taxa, tempo);
}

void main() {
  double capitalInicial = 1000.0; 
  double taxaJuros = 0.05; 
  int tempo = 12; 

  double montanteSimples = calcularJurosSimples(capitalInicial, taxaJuros, tempo);
  double montanteComposto = calcularJurosCompostos(capitalInicial, taxaJuros, tempo);

  print('Montante com Juros Simples: R\$${montanteSimples.toStringAsFixed(2)}');
  print('Montante com Juros Compostos: R\$${montanteComposto.toStringAsFixed(2)}');
}
