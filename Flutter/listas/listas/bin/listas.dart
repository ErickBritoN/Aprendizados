void main(List<String> arguments) {
  var produtos = <Produtos>[];

  produtos.add(Produtos(produtos: 'Alface'));
  produtos.add(Produtos(produtos: 'Arroz'));
  produtos.add(Produtos(produtos: 'Abacaxi'));
  produtos.add(Produtos(produtos: 'Cebola'));
  produtos.add(Produtos(produtos: 'Doritos'));
  for (var produto in produtos) {
    print(produto.produtos);
  }

  /*if (produtos.contains('Mostarda')) {
    print('Legal,tem Banana na lista');
  } else {
    print('Ops! Precisa colocar na lista, pois não tem!');
  }
  print('A lista tem ${produtos.length} produtos');
  var produtosOrdenados = produtos..sort();
  print(produtosOrdenados);
  var produtosDecrescente = produtosOrdenados.reversed;
  print(produtosDecrescente);
  for (var i = 0; i < produtosOrdenados.length; i++) {
    print(produtosOrdenados[i]);
  }
  var j = 0;
  while (j < produtosOrdenados.length) {
    print(produtosOrdenados[j]);
    j++;
  }*/
  var Alunos = <Aluno>[];
  Alunos.add(Aluno(ra: 123, nome: 'Erick'));
  Alunos.add(Aluno(ra: 456, nome: 'Tio Patinhas'));
  Alunos.add(Aluno(ra: 789, nome: 'Zé Carioca'));
  showAll(Alunos);
  Alunos.removeWhere((Aluno aluno) => aluno.nome == 'Erick');
  showAll(Alunos);
  Alunos[Alunos.indexWhere((Aluno aluno) => aluno.nome == 'Zé Carioca')].nome =
      'Zé Paulista';
  showAll(Alunos);
}

void showAll(var alunos) {
  for (var aluno in alunos) {
    print('Ra: ${aluno.ra} , Nome: ${aluno.nome}');
  }
}

class Aluno {
  int ra;
  String nome;

  Aluno({this.ra, this.nome});
}

class Produtos {
  String produtos;

  Produtos({this.produtos});
}
