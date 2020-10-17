import 'package:intl/intl.dart';

class Formatter {
  static String currency({double value, locale}) {
    if (locale == null) {
      locale = 'en_US';
    }

    final NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: locale);
    
    return numberFormat.format(value);
  }

  static String date({DateTime date, String format}) {
    if (format == null) {
      format = 'yyyy-MM-dd';
    }
    final DateFormat dateFormat = DateFormat(format);

    return dateFormat.format(date);
  }
}