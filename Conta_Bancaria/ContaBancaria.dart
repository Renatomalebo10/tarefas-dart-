import 'dart:io';

class Contabancaria {
  String titular;
  double saldo;

  Contabancaria(this.titular, this.saldo);

   void deposito(double valor) {
    saldo += valor;
    print('Depósito de ${valor} kzs realizado. Saldo atual: R\$ $saldo');
   }

    void sacar(double valor) {
      if(valor <= saldo) {
        saldo -= valor;
        print('Saque de ${valor} kzs realizado. Saldo atual: ${saldo} kzs');
      } else {
        print('Saldo insuficiente para realizar o saque de ${valor} kzs. Saldo atual: ${saldo} kzs');
      }
    }

    void mostrarSaldo() {
      print('Saldo atual de ${titular}: ${saldo} kzs');
    }
}

      void main() {
         print("======= Sistema Bancária =======");
         print("Digite o seu nome: ");
         String nome = stdin.readLineSync()!;

         print("Digite o saldo inicial: ");
         double saldoInicial = double.parse(stdin.readLineSync()!);

         Contabancaria conta = Contabancaria(nome, saldoInicial);

         int opcao = 0;

         

      }