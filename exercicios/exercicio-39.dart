/*
Crie uma função que receba dois vetores de igual tamanho e troque seus elementos de modo que o
primeiro elemento do vetorA passe a ser o primeiro elemento do vetorB e vice versa e assim sucessivamente.
Faça a troca sem utilizar uma variável auxiliar.
*/

void trocarVetores(List<int> vetorA, List<int> vetorB) {
  if (vetorA.length != vetorB.length) {
    print("Os vetores devem ter o mesmo tamanho!");
    return;
  }

  // Realizar a troca dos elementos entre os vetores
  for (int i = 0; i < vetorA.length; i++) {
    // Troca direta sem variável auxiliar
    vetorA[i] = vetorA[i] + vetorB[i];
    vetorB[i] = vetorA[i] - vetorB[i];
    vetorA[i] = vetorA[i] - vetorB[i];
  }

  print("Vetor A após troca: $vetorA");
  print("Vetor B após troca: $vetorB");
}

void main() {
  List<int> vetorA = [1, 2, 3, 4, 5];
  List<int> vetorB = [6, 7, 8, 9, 10];
  trocarVetores(vetorA, vetorB);
}
