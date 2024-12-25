/*
Construa uma função para um sistema de notas de uma instituição que possui a seguinte política de
classificação: Todo aluno recebe uma nota de 0 a 100. Alunos com nota abaixo de 40 são reprovados.As notas
possuem a seguinte regra de arredondamento: Se a diferença entre a nota e o próximo múltiplo de 5 for menor
que 3, arredondar a nota para esse próximo múltiplo de 5. Se a nota for abaixo de 38, não é feito nenhum
arredondamento pois esta nota resulta na reprovação do aluno.Por exemplo, a nota 84 será arredondada para
85, mas a nota 29 não será arredondada por ser abaixo de 40 e não ser possível arredondamento eficiente, ou
seja, que evite a reprovação do aluno.No caso de a nota ser 38, o arredondamento é possível pois atingirá 40
e o aluno será aprovado.
*/

List<String> calcularNotas(List<int> notas) {
  List<String> resultados = [];

  for (int nota in notas) {
    if (nota < 38) {
      // Notas abaixo de 38 não são arredondadas e o aluno é reprovado
      resultados.add("Nota: $nota - Reprovado");
    } else {
      // Calcula o próximo múltiplo de 5
      int proximoMultiploDe5 = ((nota / 5).ceil()) * 5;

      // Se a diferença for menor que 3, arredonda
      if (proximoMultiploDe5 - nota < 3) {
        nota = proximoMultiploDe5;
      }

      // Adiciona a nota arredondada e o status do aluno
      resultados.add("Nota: $nota - Aprovado");
    }
  }

  return resultados;
}

void main() {
  List<int> notas = [84, 29, 38, 57, 73];
  List<String> resultados = calcularNotas(notas);

  for (String resultado in resultados) {
    print(resultado);
  }
}
