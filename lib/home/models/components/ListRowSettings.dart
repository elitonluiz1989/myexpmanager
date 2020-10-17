import 'package:flutter/material.dart';
import 'package:myexpmanager/home/models/components/ListColumnSettings.dart';

class HomeScreenListRowSettings {
  final HomeScreenListColumnSettings column1;
  final HomeScreenListColumnSettings column2;
  final HomeScreenListColumnSettings column3;
  final TextAlign textAlign;
  final TextStyle textStyle;

  HomeScreenListRowSettings(
      {this.column1,
      this.column2,
      this.column3,
      this.textAlign,
      this.textStyle});
}
