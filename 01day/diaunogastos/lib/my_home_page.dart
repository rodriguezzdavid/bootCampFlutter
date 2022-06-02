import 'package:diaunogastos/models/transaction.dart';
import 'package:diaunogastos/widgets/new_transaction_card.dart';
import 'package:diaunogastos/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> transactions = [
    // Transaction(
    //   id: "1",
    //   title: "Gas",
    //   amount: 200,
    //   date: DateTime.now(),
    // ),
  ];

  void _addNewTransaction(String titleParam, double amountParam) {
    // print("_addNewTransaction");
    final transaction = Transaction(
      id: DateTime.now().toString(),
      title: titleParam,
      amount: amountParam,
      date: DateTime.now(),
    );

    // print("transactions.length: ${transactions.length}");

    setState(() {
      transactions.add(transaction);
    });

    // print("transactions.length: ${transactions.length}");
  }

  void _startAddNewTransaction() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child: NewTransactionCard(
            callbackFunction: _addNewTransaction,
          ),
        );
      },
      isDismissible: false,
      isScrollControlled: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    // print("mediaQuery.size.height: ${mediaQuery.size.height}");
    // print("mediaQuery.size.width: ${mediaQuery.size.width}");

    final appBar = AppBar(
      title: const Text("My expenses"),
    );

    final screenHeight = mediaQuery.size.height -
        appBar.preferredSize.height -
        mediaQuery.padding.top;

    final contianerOneHeight = screenHeight * 0.25;
    double contianerTwoHeight = screenHeight * 0.75;

    // print("totalHeight: $screenHeight");
    // print("contianerTwoHeight: $contianerTwoHeight");

    print("mediaQuery.orientation.name: ${mediaQuery.orientation.name}");

    final isLandscape = mediaQuery.orientation == Orientation.landscape;

    if(isLandscape) {
      contianerTwoHeight = screenHeight;
    }

    return Scaffold(
      appBar: appBar,
      body: OrientationBuilder(
        builder: (ctx, orientation) {
          print("orientation");
          print(orientation);
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OrientationBuilder(
                  builder: (ctx2, orientation2) {
                    print("orientation2");
                    print(orientation2);
                    return Container(
                      color: Colors.red,
                      height: isLandscape ? 0 : contianerOneHeight,
                      width: double.infinity,
                      // child: orientation2 == Orientation.portrait
                      //     ? Text("Portrait")
                      //     : Text("Landscape"),
                      child: Text(orientation.name),                          
                    );
                  },
                ),
                Container(
                  color: Colors.yellow,
                  height: contianerTwoHeight,
                  alignment: Alignment.topCenter,
                  child: LayoutBuilder(
                    builder: (ctx, constraints) {
                      return Container(
                        color: Colors.purple,
                        child: TransactionList(
                          transactions: transactions,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startAddNewTransaction,
        child: const Icon(Icons.add),
      ),
    );
  }
}
