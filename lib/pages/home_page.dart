import 'package:flutter/material.dart';
import 'package:opstores/widgets/background.dart';
import 'package:opstores/widgets/bottom_navigator.dart';
import 'package:opstores/widgets/tiendas.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomeBottomNavigator(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //Buscador(),
            //Colecciones(),
            Tiendas(),
          ],
        ),
      ),
    );
  }
}
