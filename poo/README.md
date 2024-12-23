### Programação Orientada a Objetos com Dart

A Programação Orientada a Objetos (POO) é um paradigma de programação que organiza o software em objetos que combinam dados (atributos) e comportamentos (métodos). Dart, como uma linguagem moderna e orientada a objetos, suporta todos os pilares fundamentais da POO: encapsulamento, herança, polimorfismo e abstração.

---

### **1. Classes e Objetos**
Em Dart, uma **classe** é uma estrutura que define atributos e métodos. Um **objeto** é uma instância dessa classe.

#### Exemplo:
```dart
class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void apresentar() {
    print('Olá, meu nome é $nome e eu tenho $idade anos.');
  }
}

void main() {
  var pessoa = Pessoa('João', 25);
  pessoa.apresentar();
}
```

---

### **2. Encapsulamento**
O encapsulamento consiste em restringir o acesso direto aos atributos e métodos de uma classe, garantindo controle sobre como os dados são manipulados. Em Dart, usamos modificadores de acesso como `_` (privado).

#### Getters e Setters

Os getters e setters são métodos usados para acessar e modificar atributos privados de uma classe de maneira controlada. Eles permitem que você adicione lógica adicional ao obter ou definir valores, como validações ou transformações.

Em Dart, os getters são definidos usando a palavra-chave `get`, enquanto os setters usam `set`. Esses métodos ajudam a preservar o encapsulamento e tornam o código mais seguro e legível.

#### Exemplo:
```dart
class ContaBancaria {
  String _titular;
  double _saldo;

  ContaBancaria(this._titular, this._saldo);

  // Getter para o saldo
  double get saldo => _saldo;

  // Setter para o saldo com validação
  set saldo(double valor) {
    if (valor >= 0) {
      _saldo = valor;
    } else {
      print('Saldo não pode ser negativo.');
    }
  }

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print('Depósito de R\$ $valor realizado com sucesso!');
    } else {
      print('Valor inválido para depósito.');
    }
  }

  void sacar(double valor) {
    if (valor > 0 && valor <= _saldo) {
      _saldo -= valor;
      print('Saque de R\$ $valor realizado com sucesso!');
    } else {
      print('Saldo insuficiente ou valor inválido.');
    }
  }
}

void main() {
  var conta = ContaBancaria('Maria', 500);
  conta.depositar(200);
  conta.sacar(100);
  print('Saldo atual: R\$ ${conta.saldo}');

  // Usando o setter para modificar o saldo
  conta.saldo = 1000;
  print('Saldo atualizado: R\$ ${conta.saldo}');

  // Tentando definir um saldo negativo
  conta.saldo = -500; // Mostrará uma mensagem de erro
}
```

---

### **3. Herança**
A herança permite que uma classe (subclasse) herde atributos e métodos de outra classe (superclasse).

#### Exemplo:
```dart
class Animal {
  void comer() {
    print('O animal está comendo.');
  }
}

class Cachorro extends Animal {
  void latir() {
    print('O cachorro está latindo.');
  }
}

void main() {
  var cachorro = Cachorro();
  cachorro.comer(); // Método herdado
  cachorro.latir(); // Método da subclasse
}
```

---

### **4. Polimorfismo**
O polimorfismo permite que métodos ou objetos assumam várias formas. Em Dart, isso é possível através da sobrescrita de métodos e interfaces.

#### Exemplo:
```dart
class Animal {
  void emitirSom() {
    print('O animal emite um som.');
  }
}

class Gato extends Animal {
  @override
  void emitirSom() {
    print('O gato mia: Miau!');
  }
}

class Cachorro extends Animal {
  @override
  void emitirSom() {
    print('O cachorro late: Au au!');
  }
}

void main() {
  List<Animal> animais = [Gato(), Cachorro()];
  
  for (var animal in animais) {
    animal.emitirSom(); // Comportamento varia de acordo com o tipo
  }
}
```

---

### **5. Abstração**
A abstração é o processo de modelar aspectos essenciais de um sistema, ignorando detalhes desnecessários. Em Dart, usamos classes abstratas para definir métodos que as subclasses devem implementar.

#### Exemplo:
```dart
abstract class Forma {
  double calcularArea(); // Método abstrato
}

class Circulo extends Forma {
  double raio;

  Circulo(this.raio);

  @override
  double calcularArea() => 3.14 * raio * raio;
}

class Retangulo extends Forma {
  double largura, altura;

  Retangulo(this.largura, this.altura);

  @override
  double calcularArea() => largura * altura;
}

void main() {
  List<Forma> formas = [Circulo(5), Retangulo(4, 6)];

  for (var forma in formas) {
    print('Área: ${forma.calcularArea()}');
  }
}
```

---

### **6. Construtores**
Dart suporta diversos tipos de construtores para flexibilizar a criação de objetos.

#### Construtor padrão:
```dart
class Pessoa {
  String nome;

  Pessoa(this.nome);
}
```

#### Construtor nomeado:
```dart
class Pessoa {
  String nome;

  Pessoa.comNome(this.nome);
}
```

#### Construtor redirecionador:
```dart
class Pessoa {
  String nome;

  Pessoa(String nome) : this.comNome(nome);

  Pessoa.comNome(this.nome);
}
```

---

### **7. Interfaces**
Em Dart, todas as classes podem ser usadas como interfaces.

#### Exemplo:
```dart
class Caminhante {
  void andar() {
    print('Andando...');
  }
}

class Nadador {
  void nadar() {
    print('Nadando...');
  }
}

class Triatleta implements Caminhante, Nadador {
  @override
  void andar() {
    print('Triatleta andando...');
  }

  @override
  void nadar() {
    print('Triatleta nadando...');
  }
}

void main() {
  var atleta = Triatleta();
  atleta.andar();
  atleta.nadar();
}
```

---

### **8. Mixins**
Mixins são usados para reutilizar código em várias classes sem herança.

#### Exemplo:
```dart
mixin Voar {
  void voar() {
    print('Voando...');
  }
}

mixin Nadar {
  void nadar() {
    print('Nadando...');
  }
}

class Pato with Voar, Nadar {}

void main() {
  var pato = Pato();
  pato.voar();
  pato.nadar();
}
```

---

### **9. Exceções e Segurança de Tipos**
Dart suporta **segurança de tipos** e manipulação de exceções.

#### Segurança de tipos:
```dart
int soma(int a, int b) => a + b;
```

#### Tratamento de exceções:
```dart
void dividir(int a, int b) {
  try {
    print(a ~/ b);
  } catch (e) {
    print('Erro: $e');
  }
}

void main() {
  dividir(10, 0);
}
```

---

### Conclusão
Dart oferece uma implementação robusta da POO, permitindo criar sistemas bem estruturados e reutilizáveis. Aproveite os pilares da POO para desenvolver soluções elegantes e eficientes!