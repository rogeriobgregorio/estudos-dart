/* 
Os triângulos podem ser classificados em 3 tipos quanto ao tamanho de seus lados:
Equilátero: Os três lados são iguais.
Isósceles: Dois lados iguais.
Escaleno: Todos os lados são diferentes.
Crie uma função que recebe os comprimentos dos três lados de um triângulo e retorne sua classificação quanto
ao tamanho de seus lados. (Neste exemplo deve-se abstrair as condições matemáticas de existência de um
triângulo).
*/

void calculaTipoTriangulo(int lado1, int lado2, int lado3) {
  
  // Verifica se os valores formam um triângulo válido
  if ((lado1 + lado2 <= lado3) ||
      (lado1 + lado3 <= lado2) ||
      (lado2 + lado3 <= lado1)) {
    print('Valores inválidos para formar um triângulo.');
    return;
  }

  // Classificação dos tipos de triângulo
  if (lado1 == lado2 && lado1 == lado3) {
    print('O triângulo é equilátero.');

  } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
    print('O triângulo é isósceles.');

  } else {
    print('O triângulo é escaleno.');
  }
}

void main() {
  calculaTipoTriangulo(20, 10, 5); // Valores inválidos para formar um triângulo
  calculaTipoTriangulo(10, 10, 10); // Equilátero
  calculaTipoTriangulo(10, 10, 15); // Isósceles
  calculaTipoTriangulo(10, 20, 15); // Escaleno
}
