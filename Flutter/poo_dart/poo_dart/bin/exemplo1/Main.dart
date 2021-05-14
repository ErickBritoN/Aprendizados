import 'Aluno.dart';

void main(List<String> args) {
  var aluno = Aluno();

  aluno.nome = 'Erick Brito';
  aluno.idade = 21;
  print('O aluno ${aluno.nome} tem ${aluno.idade}');
  aluno.fazAniversario();
  print('Agora o ${aluno.nome} tem ${aluno.idade}');
}
