/*
Escreva duas funções, uma para progressão aritmética e uma para progressão geométrica que recebam
como parâmetros um número n (número de termo), a1 (o primeiro termo) e r (a razão) e escreva os n termos ,
bem como a soma dos elementos.
*/

// Função para calcular a Progressão Aritmética (PA)
void progressaoAritmetica(int n, int a1, int r) {
  int soma = 0;
  List<int> pa = [];

  for (int i = 0; i < n; i++) {
    int termo = a1 + i * r; // Fórmula da PA: a1 + (i * r)
    pa.add(termo);
    soma += termo;
  }

  print("Progressão Aritmética (PA): $pa");
  print("Soma da PA: $soma");
}

// Função para calcular a Progressão Geométrica (PG)
void progressaoGeometrica(int n, int a1, int r) {
  int soma = 0;
  List<int> pg = [];

  for (int i = 0; i < n; i++) {
    int termo = a1 * (r ^ i); // Fórmula da PG: a1 * r^i
    pg.add(termo);
    soma += termo;
  }

  print("Progressão Geométrica (PG): $pg");
  print("Soma da PG: $soma");
}

void main() {
  int n = 5; // Número de termos
  int a1 = 2; // Primeiro termo
  int r = 3; // Razão

  progressaoAritmetica(n, a1, r);
  progressaoGeometrica(n, a1, r);
}
