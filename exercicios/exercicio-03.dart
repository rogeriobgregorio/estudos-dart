/*
Crie uma função que recebe dois parametros, base e expoente, e retorne a base elevada ao expoente.
*/

import 'dart:math';

void potencia(double base, double expoente) {
  print('$base^$expoente = ${pow(base, expoente).toDouble()}');
}

void main() {
  potencia(2, 3);
}