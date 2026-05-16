import 'dart:io';
void main(){
 int tentativas = 0; 

   do{
        print("=======================================");
        print("Bem-vindo ao sistema de login simples!");
        print("Digite seu nome de usuário:");
        String? username = stdin.readLineSync();
        print("Digite sua senha:");
        String? password = stdin.readLineSync();
        print("=======================================");

        if (username == "admin" && password == "1234") {
          print("Login bem-sucedido! Bem-vindo, $username.");
          print("Acessando o sistema...");
          print("=======================================");
          break; // Sai do loop se o login for bem-sucedido
        } else {
          print("Login falhou! Nome de usuário ou senha incorretos.");
        }
        tentativas++;
        print("\nVocê tem ${3 - tentativas} tentativas restantes.\n");
   }while(tentativas < 3);

}