/*
Faça um algoritmo que calcule o fatorial de um número.
*/

int calcularFatorial(int numero) {
  if (numero <= 1) {
    return 1;
  }

  int fatorial = 1;
  for (int i = 1; i <= numero; i++) {
    fatorial *= i;
  }

  return fatorial;
}

void main() {
  int numero = 5;
  int resultado = calcularFatorial(numero);
  print('Fatorial de $numero é $resultado');
}
