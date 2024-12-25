/*
Utilizando a estrutura do Switch faça um programa que simule uma calculadora básicaO programa recebe
como parâmetros dois valores numéricos e uma string referente à operação e a realize com os valoresnuméricos 
na ordem que foram inseridos. Por exemplo: calculadora (2, ‘+’, 3). A função efetuará a soma de 2 e
3. Dica: Os sinais das operações são: ‘+’. ‘-’, ‘*’ e ‘/’. Crie um caso default para operações inválidas.
*/

void calculadora(double num1, String operacao, double num2) {
  double resultado;

  switch (operacao) {
    case '+':
      resultado = num1 + num2;
      print('Resultado: $resultado');
      break;
    case '-':
      resultado = num1 - num2;
      print('Resultado: $resultado');
      break;
    case '*':
      resultado = num1 * num2;
      print('Resultado: $resultado');
      break;
    case '/':
      if (num2 == 0) {
        print('Erro: Divisão por zero!');
      } else {
        resultado = num1 / num2;
        print('Resultado: $resultado');
      }
      break;
    default:
      print('Operação inválida');
  }
}

void main() {
  calculadora(2, '+', 3); // Resultado: 5
  calculadora(5, '-', 2); // Resultado: 3
  calculadora(4, '*', 3); // Resultado: 12
  calculadora(10, '/', 2); // Resultado: 5
  calculadora(10, '/', 0); // Erro: Divisão por zero!
  calculadora(10, '^', 2); // Operação inválida
}
