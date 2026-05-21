import 'dart:io';
void main(){

   List<String> tarefas = [];

     while (true) {
          print("+++++++++++ Bem Vindo ++++++++++");
          print("1 - Adicionar");
          print("2 - Ver");
          print("3 - Editar");
          print("4 - Remover");
          print("0 - Sair");
          int opcao = int.parse(stdin.readLineSync()!);

          switch(opcao){
            case 1:
              print("Digite a tarefa : ");
              String tarefa = stdin.readLineSync()!;
              tarefas.add(tarefa);
              break;

            case 2:
              for(int i = 0;i< tarefas.length ;i++){
                    print("${i + 1} - ${tarefas[i]}");
              }  
              break;

           
     }

}