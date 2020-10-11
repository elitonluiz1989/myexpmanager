import 'package:flutter/material.dart';

void main() {
  runApp(MyExpManager());
}

class MyExpManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Expenses Manager',
      home: Scaffold (
        appBar: AppBar(
          title: Text('My Expenses Manager'),
        ),
        body: Text('It Worked!')
      )
    );
  }
}