import 'package:flutter/material.dart';
import 'package:myexpmanager/home/models/components/ListColumnSettings.dart';
import 'package:myexpmanager/home/models/components/ListRowSettings.dart';

class HomeScreenListRow extends StatelessWidget {
  final HomeScreenListRowSettings settings;

  const HomeScreenListRow({Key key, this.settings}) : super(key: key);

  Widget _listText(HomeScreenListColumnSettings columnSettings) {
    if (columnSettings != null) {
      TextAlign _align = settings.textAlign ?? TextAlign.left;
      TextStyle _style = settings.textStyle;

      if (columnSettings.textAlign != null) {
        _align = columnSettings.textAlign;
      }

      if (columnSettings.textStyle != null) {
        _style = columnSettings.textStyle.merge(_style);
      }

      return Text(
        columnSettings.text,
        textAlign: _align,
        style: _style,
      );
    } else {
      return Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: _listText(settings.column1)),
        ),
        Container(
            width: 100,
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.only(right: 10.0, left: 10.0),
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(
                        width: 1.0, color: Theme.of(context).primaryColor),
                    left: BorderSide(
                        width: 1.0, color: Theme.of(context).primaryColor))),
            child: _listText(settings.column2)),
        Container(
            width: 75,
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: _listText(settings.column3))
      ],
    );
  }
}
