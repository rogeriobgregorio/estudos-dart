import 'package:dartbank/cliente.dart';
import 'package:dartbank/contacorrente.dart';

void main() {

  Clinte joao = Clinte(
    nome: 'João', 
    cpf: '12345678911', 
    profissao: 'Médico'
  );

  ContaCorrente conta = ContaCorrente(
    titular: joao, 
    agencia: 123, 
    conta: 456, 
    saldo: 10.0
  );

  print(conta.toString());
  conta.saque(80.0);

  print(conta.toString());
  conta.deposito(100.0);

  print(conta.toString());
}


