/*
Crie uma função que dado dois valores (passados como parâmetros) 
mostre no console a soma, subtração, multiplicação e divisão desses valores.
*/

void calcularOperacoes(double valor1, double valor2) {

  print('Soma: ${valor1 + valor2}');
  print('Subtração: ${valor1 - valor2}');
  print('Multiplicação: ${valor1 * valor2}');
  print('Divisão: ${valor2 != 0 ? valor1 / valor2 : 'Não é possível dividir por zero.'}');
}

void main() {
  calcularOperacoes(10, 2);
}
