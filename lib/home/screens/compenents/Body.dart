import 'package:flutter/material.dart';
import 'package:myexpmanager/core/models/Expense.dart';
import 'package:myexpmanager/generated/l10n.dart';
import 'package:myexpmanager/home/models/components/ListColumnSettings.dart';
import 'package:myexpmanager/home/models/components/ListRowSettings.dart';

import 'ListRow.dart';

class HomeScreenBody extends StatelessWidget {
  final List<Expense> expenses;

  const HomeScreenBody({Key key, this.expenses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int qtdOfExpenses = expenses?.length;
    HomeScreenListRowSettings settings = null;

    return ListView.builder(
        itemCount: qtdOfExpenses,
        itemBuilder: (context, i) {
          if (i == 0) {
            settings = HomeScreenListRowSettings(
                column1: HomeScreenListColumnSettings(S.of(context).expensesDescription),
                column2: HomeScreenListColumnSettings(S.of(context).expensesValue),
                column3: HomeScreenListColumnSettings(S.of(context).expensesDueDate),
                textAlign: TextAlign.center,
                textStyle: TextStyle(
                  color: Colors.white
                ));

            return Padding(
                padding:
                    EdgeInsets.only(top: 10, right: 0, bottom: 10, left: 0),
                child: HomeScreenListRow(
                  settings: settings,
                ));
          }

          settings = HomeScreenListRowSettings(
              column1: HomeScreenListColumnSettings(expenses[i - 1].description),
              column2: HomeScreenListColumnSettings(expenses[i - 1].valueFormatted, textAlign: TextAlign.right),
              column3: HomeScreenListColumnSettings(expenses[i - 1].dueDateFormatted, textAlign: TextAlign.center));

          return Card(
              margin: EdgeInsets.only(left: 0, top: 0, bottom: 10, right: 0),
              child: InkWell(
                  onDoubleTap: () {},
                  child: Padding(
                      padding: EdgeInsets.all(10),
                      child: HomeScreenListRow(settings: settings,))));
        });
  }
}
