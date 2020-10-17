import 'package:myexpmanager/core/helpers/Formatter.dart';

class Expense {
  final String description;
  final double value;
  final DateTime dueDate;

  String get valueFormatted => Formatter.currency(value: value);

  String get dueDateFormatted => Formatter.date(date: dueDate);

  Expense(this.description, this.value, this.dueDate);
}