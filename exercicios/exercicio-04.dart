/*
Crie uma função que irá receber dois valores, o dividendo e o divisor.
A função deverá imprimir o resultado e o resto da divisão destes dois valores.
*/

void divisao(double dividendo, double divisor) {
  print('$dividendo/$divisor = ${dividendo/divisor}');
  print('Resto = ${dividendo%divisor}');
}

void main() {
  divisao(9, 4);
}