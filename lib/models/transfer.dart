class Transfer {
  final int accountNumber;
  final double value;

  Transfer(
    this.accountNumber,
    this.value,
  );

  @override
  String toString() {
    return 'Transferência - Conta: $accountNumber - Valor: $value';
  }
}
