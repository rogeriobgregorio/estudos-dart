/*
Construa uma função que receberá duas Strings de tamanhos variados e que retornará True ou False caso
todos os caracteres (independentemente de ser maiúsculo ou minúsculo) estejam contidos em ambas palavras.
*/

bool verificarContemTodosCaracteres(String palavra1, String palavra2) {
  palavra1 = palavra1.toLowerCase();
  palavra2 = palavra2.toLowerCase();

  for (int i = 0; i < palavra1.length; i++) {
    if (!palavra2.contains(palavra1[i])) {
      return false; 
    }
  }

  for (int i = 0; i < palavra2.length; i++) {
    if (!palavra1.contains(palavra2[i])) {
      return false; 
    }
  }

  return true; 
}

void main() {
  print(verificarContemTodosCaracteres("abc", "cab")); // Deve retornar true
  print(verificarContemTodosCaracteres("abc", "abcd")); // Deve retornar false
  print(verificarContemTodosCaracteres("ABc", "cab")); // Deve retornar true (case insensitive)
}
