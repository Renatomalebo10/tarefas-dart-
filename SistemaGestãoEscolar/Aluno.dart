import 'dart:io';
class Aluno {
   String nome;
   int idade;
   double NotaFinal;
   String turma;

   List<Aluno> alunos = [];

   Aluno(this.nome, this.idade,this.NotaFinal,this.turma);

   void cadastro(){
     print("Nome: ");
     nome = stdin.readLineSync()!;
     print("Idade: ");
     idade = int.parse(stdin.readLineSync()!);
     print("Medias Final: ");
     NotaFinal = double.parse(stdin.readLineSync()!);
     print("Turma: ");
     turma = (stdin.readLineSync()!);
     
     Aluno aluno = Aluno(nome, idade, NotaFinal, turma);
     alunos.add(aluno);

    print("Aluno Cadastrado");
   }

   void listarAluno(){
    for (Aluno aluno in alunos) {
         print("Nome : ${aluno.nome}");
         print("Idade : ${aluno.idade}");
         print("Nota Final : ${aluno.NotaFinal}");
         print("Turma : ${aluno.turma}");
         print("===============================");

    }
   }

   


}