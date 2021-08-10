import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OPStores',
      home: Scaffold(
        appBar: AppBar(
          title: Text('OPStores'),
        ),
        body: Center(
          child: Container(
            child: Text('OPStores'),
          ),
        ),
      ),
    );
  }
}
