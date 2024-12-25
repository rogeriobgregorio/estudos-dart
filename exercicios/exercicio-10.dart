/*
 Crie uma função que verifica se um número inteiro 
passado como parêmetro é divisível por 3 e retorne true ou false.
*/

bool ehDivisivelPor3(int numero) {
  return numero % 3 == 0;
}

void main() {
  print(ehDivisivelPor3(9)); // Output: true
  print(ehDivisivelPor3(10)); // Output: false
  print(ehDivisivelPor3(0)); // Output: true (0 é divisível por qualquer número)
}
