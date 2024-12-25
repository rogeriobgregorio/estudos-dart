/*
Crie um programa que exibe se um dia é dia útil, fim de semana ou dia inválido dado o número referente ao
dia. Considere que domingo é o dia 1 e sábado é o dia 7. Utilize a estrutura Switch.
*/

void verificarDia(int dia) {
  switch (dia) {
    case 1:
    case 7:
      print('Fim de semana');
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      print('Dia útil');
      break;
    default:
      print('Dia inválido');
  }
}

void main() {
  verificarDia(1); // Fim de semana
  verificarDia(3); // Dia útil
  verificarDia(7); // Fim de semana
  verificarDia(8); // Dia inválido
}
