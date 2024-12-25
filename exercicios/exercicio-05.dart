/*
Desenvolva uma função para que ela receba um valor 
como 0.30000000000000004 e retorne R$0,30 (observe a vírgula e o ponto).
*/

String formatarParaReal(double valor) {
  double arredondado = double.parse(valor.toStringAsFixed(2));
  String formatado = arredondado.toStringAsFixed(2).replaceAll('.', ',');
  return 'R\$${formatado}';
}

void main() {
  double valor = 0.30000000000000004;
  print(formatarParaReal(valor));
}
