/*
Crie uma estrutura condicional switch que receba uma string com o nome de uma fruta e que possua três
casos: Caso maçã, retorne no console: “Não vendemos esta fruta aqui”. Caso kiwi, retorne: “Estamos com
escassez de kiwis”. Caso melancia, retorne: “Aqui está, são 3 reais o quilo”. Teste com estas três opções .Crie
também um default, que retornará uma mensagem de erro no console.
*/

void verificarFruta(String fruta) {
  switch (fruta.toLowerCase()) {
    case 'maçã':
      print('Não vendemos esta fruta aqui');
      break;
    case 'kiwi':
      print('Estamos com escassez de kiwis');
      break;
    case 'melancia':
      print('Aqui está, são 3 reais o quilo');
      break;
    default:
      print('Erro: Fruta não encontrada');
  }
}

void main() {
  verificarFruta('maçã'); // "Não vendemos esta fruta aqui"
  verificarFruta('kiwi'); // "Estamos com escassez de kiwis"
  verificarFruta('melancia'); // "Aqui está, são 3 reais o quilo"
  verificarFruta('banana'); // "Erro: Fruta não encontrada"
}
