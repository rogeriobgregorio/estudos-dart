/*
Utilizando a estrutura de repetição for, faça uma função que percorra um vetor e conte quantos números
deste vetor estão no intervalo [10,20] (repare que o intervalo é fechado, ou seja, inclui o 10 e o 20) e quantos
deles estão fora do intervalo, escrevendo estas informações.
*/

void contarIntervalo(List<int> numeros) {
  int dentroIntervalo = 0;
  int foraIntervalo = 0;

  for (int numero in numeros) {
    if (numero >= 10 && numero <= 20) {
      dentroIntervalo++; 
    } else {
      foraIntervalo++; 
    }
  }

  print("Números no intervalo [10, 20]: $dentroIntervalo");
  print("Números fora do intervalo: $foraIntervalo");
}

void main() {
  List<int> numeros = [5, 10, 15, 20, 25, 30, 12, 18, 7];
  contarIntervalo(numeros); 
}
