/*
Faça um programa que leia um número entre 0 e 10, e escreva este número por extenso. Use o comando
switch. Crie um case default que escreva ‘Número fora do intervalo.’
*/

void numeroPorExtenso(int numero) {
  switch (numero) {
    case 0:
      print('Zero');
      break;
    case 1:
      print('Um');
      break;
    case 2:
      print('Dois');
      break;
    case 3:
      print('Três');
      break;
    case 4:
      print('Quatro');
      break;
    case 5:
      print('Cinco');
      break;
    case 6:
      print('Seis');
      break;
    case 7:
      print('Sete');
      break;
    case 8:
      print('Oito');
      break;
    case 9:
      print('Nove');
      break;
    case 10:
      print('Dez');
      break;
    default:
      print('Número fora do intervalo.');
  }
}

void main() {
  numeroPorExtenso(3); // Três
  numeroPorExtenso(7); // Sete
  numeroPorExtenso(11); // Número fora do intervalo.
  numeroPorExtenso(0); // Zero
}
