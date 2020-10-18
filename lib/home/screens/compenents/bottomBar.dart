import 'package:flutter/material.dart';
import 'package:myexpmanager/core/helpers/Formatter.dart';

class HomeScreenBottomBar extends StatelessWidget {
  final double totalValue;

  const HomeScreenBottomBar({Key key, this.totalValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          flex: 1,
          child: Text(
            'Total',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600
            ),
          )),
      Container(
        width: 80,
        margin: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0, right: 16.0),
        padding:
            EdgeInsets.only(left: 5.0, top: 10.0, bottom: 10.0, right: 5.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Text(
          Formatter.currency(value: totalValue),
          textAlign: TextAlign.right,
        ),
      )
    ]);
  }
}
