import 'package:flutter/material.dart';
import 'package:opstores/widgets/background.dart';
import 'package:opstores/widgets/bottom_navigator.dart';
import 'package:opstores/widgets/search.dart';
import 'package:opstores/widgets/store_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Background(),
          _HomeBody(),
          // Search(),
          //
        ],
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}

/*
class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //Colecciones(),
            SizedBox(height: 60),
            Tiendas(),
          ],
        ),
      ),
    );
  }
}
*/

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating: true,
          expandedHeight: 60,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          flexibleSpace: Search(),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                    title: Tiendas(),
                  ),
              childCount: 1),
        )
      ],
    ));
  }
}
