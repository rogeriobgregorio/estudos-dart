/*
As regras para o cálculo dos anos bissextos são as seguintes:
De 4 em 4 anos é ano bissexto;
De 100 em 100 anos não é ano bissexto;
De 400 em 400 anos é ano bissexto;
Prevalecem as últimas regras sobre as primeiras.
Partindo daí elabore uma função que recebe um ano e calcula se ele é ano bissexto, imprimindo no console a
mensagem e retornando true ou false.
*/

bool ehAnoBissexto(int ano) {
  // Verifica se o ano é divisível por 4 e não por 100, ou se é divisível por 400
  if ((ano % 4 == 0 && ano % 100 != 0) || (ano % 400 == 0)) {
    print('$ano é um ano bissexto.');
    return true;
  } else {
    print('$ano não é um ano bissexto.');
    return false;
  }
}

void main() {
  ehAnoBissexto(2020); // true
  ehAnoBissexto(1900); // false
  ehAnoBissexto(2000); // true
  ehAnoBissexto(2023); // false
}
