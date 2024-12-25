/*
Crie duas funções que recebem dois parâmetros, um vetor com apenas valores numéricos e um número
inteiro. Faça com que a primeira função retorne outro vetor que será resultado da multiplicação de cada
elemento pelo número passado como parâmetro. A segunda função fará o mesmo da primeira se e somente se
o valor do elemento for maior que 5.
*/

// Função 1: Multiplicação de todos os elementos pelo número passado
List<int> multiplicarTodosOsElementos(List<int> vetor, int numero) {
  List<int> resultado = [];

  for (int i = 0; i < vetor.length; i++) {
    resultado.add(vetor[i] * numero);
  }

  return resultado;
}

// Função 2: Multiplicação apenas dos elementos maiores que 5
List<int> multiplicarElementosMaioresQueCinco(List<int> vetor, int numero) {
  List<int> resultado = [];

  for (int i = 0; i < vetor.length; i++) {
    if (vetor[i] > 5) {
      resultado.add(vetor[i] * numero);
    } else {
      resultado
          .add(vetor[i]); // Se não for maior que 5, mantém o valor original
    }
  }

  return resultado;
}

void main() {
  List<int> vetor = [1, 2, 6, 4, 7, 3];

  int numero = 2;

  List<int> resultado1 = multiplicarTodosOsElementos(vetor, numero);
  List<int> resultado2 = multiplicarElementosMaioresQueCinco(vetor, numero);

  print("Resultado da multiplicação de todos os elementos: $resultado1");
  print("Resultado da multiplicação de elementos maiores que 5: $resultado2");
}
