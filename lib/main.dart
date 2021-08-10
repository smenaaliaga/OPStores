import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() => runApp(OPStores());

class OPStores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OPStores',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
