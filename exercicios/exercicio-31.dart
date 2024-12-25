/*
Escrever um algoritmo que percorre um vetor de inteiros, conta quantos 
números negativos há nesse vetor e imprime a quantidade no console.
*/

void contarNumerosNegativos(List<int> numeros) {
  int negativos = 0;

  for (int numero in numeros) {
    if (numero < 0) {
      negativos++;
    }
  }

  print("Quantidade de números negativos: $negativos");
}

void main() {
  List<int> numeros = [23, -5, 12, -8, 0, -4, 67];
  contarNumerosNegativos(numeros); 
}
