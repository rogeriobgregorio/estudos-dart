/*
Criar um programa para identificar o valor a ser pago por um plano de saúde dada a idade do conveniado
considerando que todos pagam R$ 100 mais um adicional conforme a seguinte tabela: 1) crianças com menos
de 10 anos pagam R$80; 2) conveniados com idade entre 10 e 30 anos pagam R$50; 3) conveniados com
idade acima de 30 e até 60 anos pagam R$ 95; e 4) conveniados acima de 60 anos pagam R$130.
*/

void calcularPlanoDeSaude(int idade) {
  double valorBase = 100.00;
  double adicional;

  if (idade < 10) {
    adicional = 80.00; 
  } else if (idade >= 10 && idade <= 30) {
    adicional = 50.00; 
  } else if (idade > 30 && idade <= 60) {
    adicional = 95.00; 
  } else {
    adicional = 130.00; 
  }

  double total = valorBase + adicional;
  print('Valor a ser pago: R\$${total.toStringAsFixed(2)}');
}

void main() {
  calcularPlanoDeSaude(5); // Valor a ser pago: R$180.00
  calcularPlanoDeSaude(25); // Valor a ser pago: R$150.00
  calcularPlanoDeSaude(40); // Valor a ser pago: R$195.00
  calcularPlanoDeSaude(65); // Valor a ser pago: R$230.00
}
