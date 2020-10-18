import 'package:flutter/material.dart';
import 'package:myexpmanager/core/models/Expense.dart';
import 'package:myexpmanager/generated/l10n.dart';
import 'package:myexpmanager/home/screens/compenents/List.dart';
import 'package:myexpmanager/home/screens/compenents/bottomBar.dart';
import 'package:myexpmanager/themes/default/DefaultThemeColors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  List<Expense> _expenses;

  _HomeScreen() {
    _expenses = new List<Expense>();
    _expenses.add(new Expense('water', 85.0, new DateTime(2020, 10, 18)));
    _expenses
        .add(new Expense('eletric energy', 190.0, new DateTime(2020, 10, 7)));
    _expenses.add(new Expense('market', 361.85, DateTime.now()));
    _expenses.add(new Expense('internet', 99.0, new DateTime(2020, 10, 15)));
  }

  double get totalAmountOfExpenses => _expenses.fold(0.0, (previousValue, element) => previousValue + element.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).appTitle),
      ),
      body: Padding(
          padding: EdgeInsets.only(left: 16, top: 0, bottom: 0, right: 16),
          child: HomeScreenList(
            expenses: _expenses,
          )),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10.0,
        color: DefaultThemeColors.fourth,
        child: HomeScreenBottomBar(totalValue: totalAmountOfExpenses,),
      ),
    );
  }
}
