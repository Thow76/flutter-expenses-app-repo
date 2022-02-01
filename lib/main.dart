import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MyHomePage());
}

@override
class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Shop',
      amount: 20.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter App"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                  width: double.infinity,
                  child: Card(
                    color: Colors.blue,
                    child: Text("Chart"),
                    elevation: 5,
                  )),
              Column(
                children: transactions.map((tx) {
                  return Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            tx.amount.toString(),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Text(tx.title),
                            Text(tx.date.toString()),
                          ],
                        )
                      ],
                    ),
                  );
                }).toList(),
              ),
            ],
          )),
    );
  }
}
