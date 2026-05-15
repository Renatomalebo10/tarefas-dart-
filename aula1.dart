import 'dart:io';
void main(){
    stdout.write('Digite a sua idade:');
    String ? idade  = stdin.readLineSync();
    if(idade != null){
        int idadeInt = int.parse(idade);
        if (idadeInt >= 18){
            print('Você é maior de idade.');
        } else {
            print('Você é menor de idade.');
        }
    } else {
        print('Idade inválida.');
    }
}