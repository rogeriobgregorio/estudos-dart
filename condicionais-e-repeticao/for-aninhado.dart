void main() {

  for (var multiplicando = 1; multiplicando <= 10; multiplicando++) {
    print('');
    print('Tabuada do $multiplicando');
    
    for (var multiplicador = 0; multiplicador <= 10; multiplicador++) {
      print('$multiplicando * $multiplicador = ${multiplicando * multiplicador}');
    }
  }
}