import 'dart:io';

void main(){
  int opcao = 0;

   do {
    print("+++++++++ Conversor +++++++++++");
    print("1 - Km para Metro");
    print("2 - Metro para Centrimetro");
    print("3 - Celsius para Fahrenheit");
    print("4 - Kg para Gramas");
    print("++++++++++++++++++++++++++++++++");
    opcao = int.parse(stdin.readLineSync()!);

    switch(opcao){
      case 1:
            print("===========================");
            print("Insere o valor em Km");
            double km = double.parse(stdin.readLineSync()!);
            double kmParaMetro(double Km){
                return Km * 1000;
            }
            print("${kmParaMetro(km)} metros");
            print("============================");
            break;
      
      case 2:
            print("===========================");
            print("Insere o valor em Metro");
            double metro = double.parse(stdin.readLineSync()!);
            double MetroParaCent(double metro){
                return metro * 100;
            }
            print("${MetroParaCent(metro)} metros");
            print("============================");
            break;

    } 
     
   } while (opcao != 0);
}




