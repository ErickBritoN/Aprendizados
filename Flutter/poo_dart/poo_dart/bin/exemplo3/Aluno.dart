class Aluno {
  String _nome;
  String _email;

  Aluno({String nome, String email}) {
    _nome = nome;
    _email = email;
  }

  get nome => _nome;
  get email => _email;

  set nome(value) => _nome = value;
  set email(value) => _email = value;
}
