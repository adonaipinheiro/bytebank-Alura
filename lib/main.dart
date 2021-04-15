import 'package:bytebank/screens/transferList.dart';
import 'package:flutter/material.dart';
import 'package:bytebank/screens/transferForm.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bytebank',
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.greenAccent,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.green,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => TransferList(),
        '/createTransfer': (BuildContext context) => TransferForm(),
      },
    );
  }
}
