/*
O cardápio de uma lanchonete é o seguinte:
Código Descrição do Produto Preço
100    Cachorro Quente      R$ 3,00
200    Hambúrguer Simples   R$ 4,00
300    Cheeseburguer        R$ 5,50
400    Bauru                R$ 7,50
500    Refrigerante         R$ 3,50
600    Suco                 R$ 2,80
Implemente uma função que receba como parâmetros o código do item pedido, a quantidade e calcule o valor
a ser pago por aquele lanche. Considere que a cada execução somente será calculado um item. Use o
comando switch. Crie um caso default para produto não existente.
*/

void calcularTotal(int codigo, int quantidade) {
  double preco;

  switch (codigo) {
    case 100:
      preco = 3.00; // Cachorro Quente
      break;
    case 200:
      preco = 4.00; // Hambúrguer Simples
      break;
    case 300:
      preco = 5.50; // Cheeseburguer
      break;
    case 400:
      preco = 7.50; // Bauru
      break;
    case 500:
      preco = 3.50; // Refrigerante
      break;
    case 600:
      preco = 2.80; // Suco
      break;
    default:
      print('Produto não existente.');
      return; 
  }

  double total = preco * quantidade;
  print('Total a pagar: R\$${total.toStringAsFixed(2)}');
}

void main() {
  calcularTotal(100, 2); // Total a pagar: R$6.00
  calcularTotal(300, 1); // Total a pagar: R$5.50
  calcularTotal(500, 3); // Total a pagar: R$10.50
  calcularTotal(700, 1); // Produto não existente.
}
