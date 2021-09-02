import 'package:flutter/material.dart';
import 'package:opstores/test/main_test.dart';
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
        'TestPage': (BuildContext context) => TestPage(),
      },
      debugShowCheckedModeBanner: false,
      // Define Theme
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,

        primaryColor: Color.fromRGBO(255, 180, 0, 1),
        primaryColorDark: Color.fromRGBO(193, 136, 3, 1),
        // Color.fromRGBO(38, 38, 38, 0.4)
        accentColor: Colors.cyan[600],
        // Define card theme
        cardTheme: CardTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 8,
          color: Color.fromRGBO(194, 195, 189, 0.75),
        ),
        // Define Bottom Navigation Bar
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Color.fromRGBO(2, 195, 204, 1),
          backgroundColor: Color.fromRGBO(47, 48, 52, 1),
          unselectedItemColor: Color.fromRGBO(194, 195, 189, 1),
        ),
        // Define the default font family.
        // fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
    );
  }
}
