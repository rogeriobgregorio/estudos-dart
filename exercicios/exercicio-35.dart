/*
Crie dois vetores chamados vetorPilha e vetorAdiciona. Inicialmente, o vetorPilha conterá cinco elementos
inteiros: [1, 2, 3, 4, 5]. Você deverá adicionar os valores contidos no vetorAdiciona [6, 7, 8, 9, 10] ao vetor pilha
e mostrá-los no console. Ao final das operações imprima os vetores no console.
*/

void main() {
  List<int> vetorPilha = [1, 2, 3, 4, 5];
  List<int> vetorAdiciona = [6, 7, 8, 9, 10];

  // Adicionando os valores do vetorAdiciona ao vetorPilha
  for (var elemento in vetorAdiciona) {
    vetorPilha.add(elemento); // Usando add() para adicionar os elementos
  }

  print("Tamanho do vetor após adição: ${vetorPilha.length}");
  print("Vetor Pilha após adições: $vetorPilha");
}
