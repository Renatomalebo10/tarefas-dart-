class Contabancaria {
  String titular;
  double saldo;

  Contabancaria(this.titular, this.saldo);

   void deposito(double valor) {
    saldo += valor;
    print('Depósito de ${valor} realizado. Saldo atual: R\$ $saldo');
   }

}