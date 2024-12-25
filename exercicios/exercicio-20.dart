/*
Crie um programa para informar quais e quantas notas são necessárias para entregar o mínimo de cédulas
para um determinado valor informado pelo usuário considerando notas de R$ 100, R$ 50, R$ 10 e R$ 5 e R$ 1.
Seu programa deve mostrar apenas as notas utilizadas. Por exemplo, ao solicitar R$18, o programa deve
informar apenas a seguinte informação (note que não foram exibidas informações sobre as demais cédulas): 1
nota(s) de R$ 10. 1 nota(s) de R$ 5. 3 nota(s) de R$ 1.
*/

void calcularNotas(int valor) {
  int notas100 = 0, notas50 = 0, notas10 = 0, notas5 = 0, notas1 = 0;

  // Calculando as notas de 100
  if (valor >= 100) {
    notas100 = valor ~/ 100;
    valor = valor % 100;
  }

  // Calculando as notas de 50
  if (valor >= 50) {
    notas50 = valor ~/ 50;
    valor = valor % 50;
  }

  // Calculando as notas de 10
  if (valor >= 10) {
    notas10 = valor ~/ 10;
    valor = valor % 10;
  }

  // Calculando as notas de 5
  if (valor >= 5) {
    notas5 = valor ~/ 5;
    valor = valor % 5;
  }

  // Calculando as notas de 1
  if (valor >= 1) {
    notas1 = valor;
    valor = 0;
  }

  // Exibindo as notas utilizadas
  if (notas100 > 0) {
    print('$notas100 nota(s) de R\$ 100');
  }
  if (notas50 > 0) {
    print('$notas50 nota(s) de R\$ 50');
  }
  if (notas10 > 0) {
    print('$notas10 nota(s) de R\$ 10');
  }
  if (notas5 > 0) {
    print('$notas5 nota(s) de R\$ 5');
  }
  if (notas1 > 0) {
    print('$notas1 nota(s) de R\$ 1');
  }
}

void main() {
  calcularNotas(18); // Saída esperada: 1 nota(s) de R$ 10. 1 nota(s) de R$ 5. 3 nota(s) de R$ 1.
  print('---');
  calcularNotas(135); // Saída esperada: 1 nota(s) de R$ 100. 1 nota(s) de R$ 30. 1 nota(s) de R$ 5.
}
