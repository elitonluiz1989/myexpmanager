import 'package:flutter/material.dart';
import 'package:myexpmanager/routes.dart';
import 'package:myexpmanager/themes/default/theme.dart';
void main() {
  runApp(MyExpManager());
}

class MyExpManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme(),
      initialRoute: '/',
      routes: routes,
    );
  }
}