import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:myexpmanager/generated/l10n.dart';
import 'package:myexpmanager/routes.dart';
import 'package:myexpmanager/themes/default/theme.dart';
void main() {
  runApp(MyExpManager());
}

class MyExpManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: defaultTheme(),
      initialRoute: '/',
      routes: routes,
    );
  }
}