import 'package:flutter/material.dart';
import 'package:myexpmanager/routes.dart';
void main() {
  runApp(MyExpManager());
}

class MyExpManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: routes,
    );
  }
}