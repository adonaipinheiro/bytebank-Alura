import 'package:flutter/material.dart';
import 'package:bytebank/components/input.dart';
import 'package:bytebank/models/transfer.dart';

class TransferForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TransferFormState();
  }
}

class TransferFormState extends State<TransferForm> {
  final TextEditingController _controllerValueField = TextEditingController();
  final TextEditingController _controllerAccountField = TextEditingController();

  void _createTranfer(BuildContext context) {
    final int account = int.tryParse(_controllerAccountField.text);
    final double value = double.tryParse(_controllerValueField.text);

    if (account != null && value != null) {
      final createdTransfer = Transfer(account, value);
      Navigator.pop(context, createdTransfer);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando transferência'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Input(
                controller: _controllerAccountField,
                label: 'Número da Conta',
                hint: '123'),
            Input(
                controller: _controllerValueField,
                label: 'Valor',
                hint: '123',
                icon: Icons.monetization_on),
            ElevatedButton(
              onPressed: () {
                _createTranfer(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                textStyle: TextStyle(color: Colors.white),
              ),
              child: Text(
                'Confirmar',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
