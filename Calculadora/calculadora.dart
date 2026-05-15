import 'dart:io';
void main(){

  print("Calculadora Simples");
  String decisao;

  do {
  print("Digite a operação que deseja realizar ( 1 -> soma, 2 -> subtração, 3 -> multiplicação, 4 -> divisão): ");
  String? operacao = stdin.readLineSync();
    switch(operacao){
     case "1":
         int soma(int num1,int num2) => num1 + num2;
            print("Digite um número: ");
            int num1 = int.parse(stdin.readLineSync()!);
            print("Digite outro número: ");
            int num2 = int.parse(stdin.readLineSync()!);

            print("|======================================|");
            print("|=====    Calculadora Simples    ======|");
            print("|======================================|");
            print("| Operações efectuadas: Soma");
            print("|    Calculo: ${num1} + ${num2}");
            print("| O resultado da soma é: ${soma(num1, num2)}");
            print("|=======================================");
     break;

     case "2":
            int subtracao(int num1,int num2) => num1 - num2;
            print("Digite um número: ");
            int num1 = int.parse(stdin.readLineSync()!);
            print("Digite outro número: ");
            int num2 = int.parse(stdin.readLineSync()!);

            print("|======================================|");
            print("|=====    Calculadora Simples    ======|");
            print("|======================================|");
            print("| Operações efectuadas: subtracao");
            print("|   Calculo: ${num1} - ${num2}");
            print("| O resultado da subtração é: ${subtracao(num1, num2)}");
            print("|=======================================");

          
     break; 

     case "3":
            int multiplicacao(int num1,int num2) => num1 * num2;
            print("Digite um número: ");
            int num1 = int.parse(stdin.readLineSync()!);
            print("Digite outro número: ");
            int num2 = int.parse(stdin.readLineSync()!);

            print("|======================================|");
            print("|=====    Calculadora Simples    ======|");
            print("|======================================|");
            print("| Operações efectuadas: multiplicacao");
            print("|    Calculo: ${num1} * ${num2}");
            print("| O resultado da multiplicação é: ${multiplicacao(num1, num2)}");
            print("|=======================================");

      break;

    case "4":
            double divisao(int num1,int num2) => num1 / num2;
            print("Digite um número: ");
            int num1 = int.parse(stdin.readLineSync()!);
            print("Digite outro número: ");
            int num2 = int.parse(stdin.readLineSync()!);
            if(num2 == 0){
                print("Não é possível dividir por zero.");
            } else {

            print("|======================================|");
            print("|=====    Calculadora Simples    ======|");
            print("|======================================|");
            print("| Operações efectuadas: Divisão");
            print("|    Calculo: ${num1} / ${num2}");
            print("| O resultado da divisão é: ${divisao(num1, num2)}");
            print("|=======================================");
            }
    break;  

    default:
        print("Operação inválida.");
}
   print("Digite a continuar? (s/n)");
   decisao = stdin.readLineSync()!.toLowerCase();
} while (decisao == "s"); 
 print("Obrigado por usar a calculadora!");

}

