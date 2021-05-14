import 'dart:math';

class Operacoes {
  dynamic somar(var v1, var v2) {
    return v1 + v2;
  }

  dynamic multiplicar(var v1, var v2) {
    return v1 * v2;
  }

  dynamic potencia(var base, var expoente) {
    return pow(base, expoente);
  }

  bool ePar(dynamic valor) {
    return (valor % 2 == 0);
  }
}
