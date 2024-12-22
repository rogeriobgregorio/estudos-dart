void main() {
  // 1. Condicional if, else, else if
  int numero = 7;
  if (numero > 10) {
    print('O número é maior que 10');
  } else if (numero == 7) {
    print('O número é 7');
  } else {
    print('O número é menor que 7');
  }

  // 2. Operador Ternário
  String resultado = (numero > 5) ? 'Maior que 5' : 'Menor ou igual a 5';
  print(resultado);

  // 3. Switch case
  switch (numero) {
    case 1:
      print('Número é 1');
      break;
    case 7:
      print('Número é 7');
      break;
    case 10:
      print('Número é 10');
      break;
    default:
      print('Número não identificado');
  }

  // 4. Operadores Lógicos
  int a = 5, b = 10;
  if (a > 3 && b < 20) {
    print('Ambas as condições são verdadeiras');
  }
  if (a < 3 || b > 5) {
    print('Pelo menos uma das condições é verdadeira');
  }
  if (!(a == 5)) {
    print('A condição é falsa');
  }

  // 5. Laço for
  print('Laço for:');
  for (int i = 0; i < 5; i++) {
    print(i);
  }

  // 6. Laço while
  print('Laço while:');
  int i = 0;
  while (i < 5) {
    print(i);
    i++;
  }

  // 7. Laço do-while
  print('Laço do-while:');
  i = 0;
  do {
    print(i);
    i++;
  } while (i < 5);

  // 8. Laço for-in
  List<int> lista = [1, 2, 3, 4, 5];
  print('Laço for-in:');
  for (int i in lista) {
    print(i);
  }

  // 9. Laço forEach
  print('Laço forEach:');
  lista.forEach((numero) {
    print(numero);
  });

  // 10. Controle de Fluxo - break
  print('Controle de Fluxo - break:');
  for (int i = 0; i < 5; i++) {
    if (i == 3) {
      break; // Interrompe o loop quando i for igual a 3
    }
    print(i);
  }

  // 11. Controle de Fluxo - continue
  print('Controle de Fluxo - continue:');
  for (int i = 0; i < 5; i++) {
    if (i == 2) {
      continue; // Pula a iteração quando i for igual a 2
    }
    print(i);
  }

  // 12. Try-Catch
  print('Try-Catch:');
  try {
    int resultado = 10 ~/ 0; // Tentativa de divisão por zero
    print(resultado);
  } catch (e) {
    print('Erro: $e'); // Captura e imprime o erro
  } finally {
    print('Finalizado!');
  }
}
