/*
 Construir um algoritmo que calcule a média aritmética dos valores de um vetor de inteiros.
 */

double calcularMedia(List<int> numeros) {
  if (numeros.isEmpty) {
    print("O vetor está vazio.");
    return 0.0;
  }

  int soma = 0;

  for (int numero in numeros) {
    soma += numero;
  }

  double media = soma / numeros.length;

  return media;
}

void main() {
  List<int> numeros = [10, 20, 30, 40, 50];
  double media = calcularMedia(numeros); 
  print("A média aritmética é: $media");
}
