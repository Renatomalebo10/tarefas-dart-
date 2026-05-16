import 'dart:io';
void main(){
  Set<String> toDoList = {};
  String decisao;

  do {
    print("Quantos itens deseja adicionar a sua lista de tarefas? ");
  int numberOfItems = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < numberOfItems; i++) {
    print("Digite o item ${i + 1}: ");
    String item = stdin.readLineSync()!;
    toDoList.add(item);
  }

  print("");

  print("To-Do List:");
  for (String item in toDoList) {
    print("- $item");
  }

  print("\nQual item deseja remover? ");
  String itemToRemove = stdin.readLineSync()!;
  toDoList.remove(itemToRemove);

  print("\nAtualização do To-Do List:");
  for (String item in toDoList) {
    print("- $item");
  }

  print("Digite a continuar? (s/n)");
  decisao = stdin.readLineSync()!.toLowerCase();
  } while (decisao == "s");
}