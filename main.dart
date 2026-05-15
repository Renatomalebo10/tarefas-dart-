void main() {
  print('Olá, Mundo! Dart está funcionando.');
  
  // Exemplo de variáveis
  String nome = 'Renato';
  int idade = 18;
  
  print('Nome: $nome, Idade: $idade');

  int nivel = 12;

  if (nivel >= 10) {
    print("Nível Avançado");
  } else {
    print("Nível Iniciante");
  }

  // Loops
  for (int i = 0; i < 3; i++) {
    print("Repetição $i");
  }


    List<String> tecnologias = ['Dart', 'Flutter', 'Node.js'];
    tecnologias.add('MySQL');
    print(tecnologias[0]); // Dart

    List<int> tecnologia = [1, 2, 3];
    tecnologia.add(4);
    print(tecnologia); // 1

    Map<String, dynamic> usuario = {
    'nome': 'Renato',
    'estudante': true,
    'escola': 'ITEL'
    };
    print(usuario['nome']); // Renato
    print(usuario['estudante']); // true
    print(usuario['escola']); // ITEL
}
