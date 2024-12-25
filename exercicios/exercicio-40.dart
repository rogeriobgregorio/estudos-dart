/*
Faça uma função que receba como parâmetro um vetor de notas e mostre os conceitos de cada uma de
modo que de 0,0 a 4,9 seja atribuído o conceito D, de 5,0 a 6,9 seja atribuído o conceito C, de 7,0 a 8,9 o
conceito B e de 9,0 a 10,0 o conceito A
*/

void atribuirConceitos(List<double> notas) {
  for (double nota in notas) {
    String conceito;

    if (nota >= 0.0 && nota <= 4.9) {
      conceito = 'D';
    } else if (nota >= 5.0 && nota <= 6.9) {
      conceito = 'C';
    } else if (nota >= 7.0 && nota <= 8.9) {
      conceito = 'B';
    } else if (nota >= 9.0 && nota <= 10.0) {
      conceito = 'A';
    } else {
      conceito = 'Nota inválida'; 
    }

    print("Nota: $nota - Conceito: $conceito");
  }
}

void main() {
  List<double> notas = [3.5, 6.8, 7.9, 9.2, 10.0, 4.5];
  atribuirConceitos(notas);
}
