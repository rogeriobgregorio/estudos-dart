/*
Um homem decidiu ir à uma revenda comprar um carro. Ele deseja comprar um carro hatch, e a revenda
possui, além de carros hatch, sedans, motocicletas e caminhonetes. Utilizando uma estrutura switch, caso o
comprador queira o hatch, retorne: “Compra efetuada com sucesso”. Nas outras opções, retorne: “Tem certeza
que não prefere este modelo?”. Caso seja especificado um modelo que não está disponível, retorne no console:
“Não trabalhamos com este tipo de automóvel aqui”.
*/

void verificarCompra(String modelo) {
  switch (modelo.toLowerCase()) {
    case 'hatch':
      print('Compra efetuada com sucesso');
      break;
    case 'sedan':
    case 'motocicleta':
    case 'caminhonete':
      print('Tem certeza que não prefere este modelo?');
      break;
    default:
      print('Não trabalhamos com este tipo de automóvel aqui');
  }
}

void main() {
  verificarCompra('hatch'); // Compra efetuada com sucesso
  verificarCompra('sedan'); // Tem certeza que não prefere este modelo?
  verificarCompra('motocicleta'); // Tem certeza que não prefere este modelo?
  verificarCompra('caminhonete'); // Tem certeza que não prefere este modelo?
  verificarCompra('esportivo'); // Não trabalhamos com este tipo de automóvel aqui
}
