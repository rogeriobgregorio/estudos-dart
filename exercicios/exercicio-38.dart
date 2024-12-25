/*
Escreva uma função que receba dois parâmetros início e fim. Essa função deve imprimir todos os números
ímpares que estão entre esses valores. Por padrão os valores devem ser 0 para início e 100 para fim. Atente
para corrigir a ordem dos parâmetros caso a função receba o valor maior antes do menor.
*/

void imprimirImpares(int inicio, int fim) {
  // Corrigir a ordem dos parâmetros, caso o valor de 'inicio' seja maior que 'fim'
  if (inicio > fim) {
    int temp = inicio;
    inicio = fim;
    fim = temp;
  }

  for (int i = inicio; i <= fim; i++) {
    if (i % 2 != 0) {
      print(i);
    }
  }
}

void main() {
  imprimirImpares(0, 100);
  imprimirImpares(50, 30);
}
