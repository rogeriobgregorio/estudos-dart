/*
Um funcionário irá receber um aumento de acordo com o seu plano de
trabalho, de acordo com a tabela abaixo:
Plano Aumento
A      10%
B      15%
C      20%
Faça uma função que leia o plano de trabalho e o salário atual de um funcionário e calcula e imprime o seu
novo salário. Use a estrutura switch e faça um caso default que indique que o plano é inválido.
*/

void calcularAumento(String plano, double salarioAtual) {
  double aumento;
  double novoSalario;

  switch (plano.toUpperCase()) {
    case 'A':
      aumento = 0.10;
      break;
    case 'B':
      aumento = 0.15;
      break;
    case 'C':
      aumento = 0.20;
      break;
    default:
      print('Plano inválido');
      return;
  }

  novoSalario = salarioAtual * (1 + aumento);
  print('Novo salário: R\$${novoSalario.toStringAsFixed(2)}');
}

void main() {
  calcularAumento('A', 2000.00); // Novo salário: R$2200.00
  calcularAumento('B', 1500.00); // Novo salário: R$1725.00
  calcularAumento('C', 3000.00); // Novo salário: R$3600.00
  calcularAumento('D', 2500.00); // Plano inválido
}
