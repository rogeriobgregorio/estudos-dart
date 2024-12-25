/* Uma das vantagens da programação é a automatização de tarefas que não gostamos de realizar.Dito isto,
elabore uma função cujo objetivo é resolver a fórmula de Bhaskara.Para isso, sua função deve receber três
parâmetros, “ax2”, “bx” e “c”, de tal modo que na equação: 3x² - 5x + 12 os valores seriam respectivamente: 3,
-5, 12. Como retorno deve ser passado um vetor que tem 2 valores um para cada possível resultado, mesmo
que os resultados sejam iguais.Caso o delta seja negativo, retorne, ao invés do vetor, um string com a frase:
“Delta é negativo”. */

import 'dart:math';

dynamic resolverBhaskara(double a, double b, double c) {
  // Calcula o delta: Δ = b² - 4ac
  double delta = pow(b, 2) - (4 * a * c);

  if (delta < 0) {
    // Caso delta seja negativo, retorna a mensagem
    return "Delta é negativo";
  }

  // Calcula as raízes: x1 = (-b + √Δ) / (2a) e x2 = (-b - √Δ) / (2a)
  double raiz1 = (-b + sqrt(delta)) / (2 * a);
  double raiz2 = (-b - sqrt(delta)) / (2 * a);

  // Retorna um vetor com os dois resultados
  return [raiz1, raiz2];
}

void main() {
  double a = 3; // Coeficiente de x²
  double b = -5; // Coeficiente de x
  double c = 12; // Termo constante

  var resultado = resolverBhaskara(a, b, c);

  if (resultado is String) {
    // Caso seja uma string (delta negativo)
    print(resultado);
  } else {
    // Caso seja um vetor com as raízes
    print('Raízes: x1 = ${resultado[0]}, x2 = ${resultado[1]}');
  }
}
