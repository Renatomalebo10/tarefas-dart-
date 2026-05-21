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
              print("+++++++++ Adicionar +++++++++");
              print("Digite a tarefa : ");
              String tarefa = stdin.readLineSync()!;
              tarefas.add(tarefa);
              break;

            case 2:
              print("+++++++++ Ver +++++++++");
              for(int i = 0;i< tarefas.length ;i++){
                    print("${i + 1} - ${tarefas[i]}");
              }  
              break;

            case 3:
            print("+++++++++ Editar +++++++++");
              print("Digite o número da tarefa : ");
              int indece = int.parse(stdin.readLineSync()!);
              
              print("Digite a nova tarefa : ");
              String nova = stdin.readLineSync()!;

              tarefas[indece - 1] = nova;

              break;

            case 4:
               print("+++++++++ Remover +++++++++");
               print("Digite o número da tarefa : ");
               int indece = int.parse(stdin.readLineSync()!);

               tarefas.remove(indece - 1);  
               break;

            case 0:
               print("+++++++++ Sair +++++++++");
               print("Obrigado por estares aqui!");
               print("Quantas estrelas das ao sistema de 0 - 5 ??");
               int feedbck = int.parse(stdin.readLineSync()!);

              if(feedbck < 2){
                print("obrigado pela ${feedbck} Estrela");
              }else{
                print("obrigado pelas ${feedbck} Estrelas");
              }

              default:
               print("Tente Novamente!");
          }


     }

}