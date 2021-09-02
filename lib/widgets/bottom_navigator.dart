import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      iconSize: 32,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Tiendas'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag), label: 'Productos'),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart), label: 'Favoritos'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), label: 'Usuarios')
      ],
    );
  }
}
