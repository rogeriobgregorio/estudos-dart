/*
Pedro joga N jogos de basquete por temporada. Para saber como está ele está progredindo, ele mantém
registro de todos os as pontuações feitas por jogo. Após cada jogo ele anota no novo valor e confere se o
mesmo é maior ou menor que seu melhor e pior desempenho. Dada uma lista string = “pontuação1 pontuação2
pontuação3 etc..”, escreva uma função que ao recebê-la irá comparar os valores um a um e irá retornar um
vetor com o número de vezes que ele bateu seu recorde de maior número de pontos e quando fez seu pior
jogo. (Número do pior jogo).Obs.: O primeiro jogo não conta como novo recorde do melhor.
Exemplo:
String: “10 20 20 8 25 3 0 30 1”
Retorno: [3, 7] (Significa que ele bateu três vezes seu recorde de melhor pontuação e a pior pontuação
aconteceu no sétimo jogo.)
*/

List<int> analisarDesempenho(String pontuacoes) {
  // Converte a string de pontuações em uma lista de inteiros
  List<int> listaPontuacoes = pontuacoes.split(' ').map(int.parse).toList();

  int recordes = 0; // Contador de vezes que ele bateu o recorde
  int piorJogo = 0; // Índice do pior jogo
  int melhorPontuacao = listaPontuacoes[0]; // Pontuação inicial como melhor
  int piorPontuacao = listaPontuacoes[0]; // Pontuação inicial como pior

  // Itera pela lista a partir do segundo jogo
  for (int i = 1; i < listaPontuacoes.length; i++) {
    if (listaPontuacoes[i] > melhorPontuacao) {
      melhorPontuacao = listaPontuacoes[i];
      recordes++;
    } else if (listaPontuacoes[i] < piorPontuacao) {
      piorPontuacao = listaPontuacoes[i];
      piorJogo = i + 1; // +1 porque o índice começa em 0
    }
  }

  return [recordes, piorJogo];
}

void main() {
  String pontuacoes = "10 20 20 8 25 3 0 30 1";
  List<int> resultado = analisarDesempenho(pontuacoes);
  print(resultado); 
}
