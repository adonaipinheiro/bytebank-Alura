import 'package:flutter/material.dart';
import 'package:bytebank/models/transfer.dart';
import 'package:bytebank/components/transferCard.dart';

class TransferList extends StatefulWidget {
  final List<Transfer> _transfers = [];

  @override
  State<StatefulWidget> createState() {
    return TransferListState();
  }
}

class TransferListState extends State<TransferList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: ListView.builder(
        itemCount: widget._transfers.length,
        itemBuilder: (context, index) {
          final transfer = widget._transfers[index];
          return TransferItem(transfer);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/createTransfer').then((transfer) {
            if (transfer != null) {
              setState(() {
                widget._transfers.add(transfer);
              });
            }
          });
        },
      ),
    );
  }
}
