import 'cliente.dart';

class ContaCorrente {
  Clinte titular;
  int agencia;
  int conta;
  double saldo;

  ContaCorrente(
      {required this.titular,
      required this.agencia,
      required this.conta,
      this.saldo = 0});

  void saque(double valorDoSaque) {
    if (conta - valorDoSaque < -100) {
      print('Saldo insuficiente.');
    } else {
      print('Sacando $valorDoSaque');
      saldo -= valorDoSaque;
    }
  }

  void deposito(double valorDoDeposito) {
    saldo += valorDoDeposito;
  }

  @override
  String toString() {
    return '''
ContaCorrente {
  titular: $titular,
  agencia: $agencia,
  conta: $conta,
  saldo: R\$${saldo.toStringAsFixed(2)}
}''';
  }
}
