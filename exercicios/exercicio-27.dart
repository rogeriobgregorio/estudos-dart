/*
Construa uma função que receba como parâmetros as alturas e as taxas de crescimento anuais de duas
crianças e calcule se existe uma criança menor, caso exista se a criança menor ultrapassará a maior e em
quantos anos isso acontecerá. Utilize centímetros para as unidades de medida.
*/

int? calcularAnoUltrapassagem(double altura1, double taxaCrescimento1,
    double altura2, double taxaCrescimento2) {
  int anos = 0;

  // Verifica qual criança é menor
  if (altura1 > altura2) {
    // Troca os valores se a criança 1 for maior
    double tempAltura = altura1;
    double tempTaxa = taxaCrescimento1;
    altura1 = altura2;
    taxaCrescimento1 = taxaCrescimento2;
    altura2 = tempAltura;
    taxaCrescimento2 = tempTaxa;
  }

  // Calcula a ultrapassagem
  while (altura1 <= altura2) {
    altura1 += taxaCrescimento1;
    altura2 += taxaCrescimento2;
    anos++;

    if (anos > 100) {
      // Caso o loop ultrapasse 100 anos, assume-se que a ultrapassagem não ocorrerá
      return null;
    }
  }

  return anos;
}

void main() {
  // Exemplo de entrada: altura e taxa de crescimento de 2 crianças
  double altura1 = 120.0; // Altura da criança 1 em cm
  double taxaCrescimento1 = 5.0; // Taxa de crescimento anual da criança 1 em cm
  double altura2 = 130.0; // Altura da criança 2 em cm
  double taxaCrescimento2 = 3.0; // Taxa de crescimento anual da criança 2 em cm

  int? anos = calcularAnoUltrapassagem(
      altura1, taxaCrescimento1, altura2, taxaCrescimento2);

  if (anos == null) {
    print("A criança menor não ultrapassará a maior em até 100 anos.");
  } else {
    print("A criança menor ultrapassará a maior em $anos anos.");
  }
}
