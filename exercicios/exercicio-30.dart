/* 
Escreva um algoritmo que percorre um vetor de inteiros 
e defina o maior e menor valor dentro do vetor.
*/

void encontrarMaiorMenor(List<int> numeros) {
  if (numeros.isEmpty) {
    print("O vetor está vazio.");
    return;
  }

  int maior = numeros[0];
  int menor = numeros[0];

  for (int numero in numeros) {
    if (numero > maior) {
      maior = numero;
    }
    if (numero < menor) {
      menor = numero;
    }
  }

  print("Maior valor: $maior");
  print("Menor valor: $menor");
}

void main() {
  List<int> numeros = [23, 56, 12, 5, 89, 32, 67];
  encontrarMaiorMenor(numeros);
}
