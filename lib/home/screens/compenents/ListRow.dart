import 'package:flutter/material.dart';
import 'package:myexpmanager/home/models/components/ListRowSettings.dart';

class HomeScreenListRow extends StatelessWidget {
  final HomeScreenListRowSettings settings;

  const HomeScreenListRow({Key key, this.settings}) : super(key: key);

  Widget _listText(String data, [TextAlign align, TextStyle style]) {
    TextAlign _align = settings.textAlign ?? TextAlign.left;
    TextStyle _style = settings.textStyle;

    if (align != null) {
      _align = align;
    }

    if (style != null) {
      _style = style.merge(_style);
    }

    return Text(
      data,
      textAlign: _align,
      style: _style,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: _listText(settings.column1.text, settings.column1.textAlign, settings.column1.textStyle)),
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
            child: _listText(settings.column2.text, settings.column2.textAlign, settings.column2.textStyle)),
        Container(
            width: 75,
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: _listText(settings.column3.text, settings.column3.textAlign, settings.column3.textStyle))
      ],
    );
  }
}
