/*
 Ler um vetor de números inteiros e imprimir quantos são pares e quantos são ímpares.
*/

void contarParesImpares(List<int> numeros) {
  int pares = 0;
  int impares = 0;

  for (int numero in numeros) {
    if (numero % 2 == 0) {
      pares++;
    } else {
      impares++;
    }
  }

  print("Pares: $pares");
  print("Ímpares: $impares");
}

void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  contarParesImpares(numeros); 
}
