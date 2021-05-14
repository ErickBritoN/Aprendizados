import 'Operacoes.dart';

void main(List<String> args) {
  var op = Operacoes();
  var v1 = 10;
  var v2 = 10;
  var base = 5;
  var expoente = 3;
  var valor = 10;
  print(op.somar(v1, v2));
  print(op.multiplicar(v1, v2));
  print(op.potencia(base, expoente));
  print(op.ePar(valor));
}
