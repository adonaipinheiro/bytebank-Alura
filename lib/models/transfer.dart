class Transfer {
  final int accountNumber;
  final double value;

  Transfer(
    this.accountNumber,
    this.value,
  );

  @override
  String toString() {
    return 'TransferĂȘncia - Conta: $accountNumber - Valor: $value';
  }
}
