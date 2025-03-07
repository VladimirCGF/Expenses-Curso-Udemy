import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 510.76,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text('Despesas Pessoais'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('Gráfico'),
            ),
          ),
          Column(
            children:
                _transactions.map((tr) {
                  return Card(child: Text(tr.title));
                }).toList(),
          ),
        ],
      ),
    );
  }
}
