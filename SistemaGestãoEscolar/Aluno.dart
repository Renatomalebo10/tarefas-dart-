import 'dart:io';
List<Aluno> alunos = [];

class Aluno {
  int id;
   String nome;
   int idade;
   double NotaFinal;
   String turma;

   Aluno(this.id, this.nome, this.idade,this.NotaFinal,this.turma);

   void cadastro(){
    print("+++++++++++++++++++++++++++++++++");
     print("Id: ");
     id = int.parse(stdin.readLineSync()!);
     print("Nome: ");
     nome = stdin.readLineSync()!;
     print("Idade: ");
     idade = int.parse(stdin.readLineSync()!);
     print("Medias Final: ");
     NotaFinal = double.parse(stdin.readLineSync()!);
     print("Turma: ");
     turma = (stdin.readLineSync()!);
     print("++++++++++++++++++++++++++++++++++");
     Aluno aluno = Aluno(id,nome, idade, NotaFinal, turma);
     alunos.add(aluno);

    print("Aluno Cadastrado");
   }

   void listarAluno(){
    for (Aluno aluno in alunos) {
         print("===============================");
         print("Id : ${aluno.id}");
         print("Nome : ${aluno.nome}");
         print("Idade : ${aluno.idade}");
         print("Medías Final : ${aluno.NotaFinal}");
         print("Turma : ${aluno.turma}");
         print("===============================");
    }
   }

   void editar(){
     print("Digite o Id : ");
     int Id = int.parse(stdin.readLineSync()!);
     
     bool encontrado = false;

     for (Aluno aluno in alunos) {
          if(aluno.id == Id){
            encontrado = true;

            print("Novo Nome : ");
            aluno.nome = stdin.readLineSync()!;
            print("Novo idade : ");
            aluno.idade = int.parse(stdin.readLineSync()!);
            print("Nova Meías Final : ");
            aluno.NotaFinal = double.parse(stdin.readLineSync()!);
            print("Nova Turma : ");
            aluno.turma = stdin.readLineSync()!;

            print("Aluno Atualizado");
            break;

        }
     }
     if(!encontrado){
      print("Aluno não encontrado!");
     }
   }


   void remover(){
      print("Digite o Id : ");
     int IdRemove = int.parse(stdin.readLineSync()!);
     bool encontrado = false;

     for (Aluno aluno in alunos) {
          if(aluno.id == IdRemove){
            encontrado = true;

           alunos.removeAt(IdRemove);
        
            print("Aluno removido");
            break;
        }
     }
     if(!encontrado){
      print("Aluno não encontrado!");
     }
   }

   void media(){
      for (Aluno aluno in alunos) {
         print("+++++++++++++ Medías +++++++++++++");
         print("${aluno.NotaFinal}");
         print("+++++++++++++++++++++++++++++++++++");
      }
      }


 void aprovado(){
        for (Aluno aluno in alunos) {
         print("+++++++++++++ Aprovados +++++++++++++");
         if(aluno.NotaFinal > 10){
            print("Novo Nome : ");
            aluno.nome = stdin.readLineSync()!;
            print("Novo idade : ");
            aluno.idade = int.parse(stdin.readLineSync()!);
            print("Nova Turma : ");
            aluno.turma = stdin.readLineSync()!;
            print("Aprovado com a Medía : ${aluno.NotaFinal}");
         }
      }

}

void main(){
    Aluno a = Aluno(0,"", 0, 0.0, "A2");
    a.cadastro();
    a.listarAluno();
}