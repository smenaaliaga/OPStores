import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _storeAppBar(),
        ],
      ),
    );
  }

  Widget _storeAppBar() {
    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: Colors.indigo,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text('XYZ Store',
            style: TextStyle(color: Colors.white, fontSize: 16.0)),
        background: Image.asset('assets/img/juno.jpg', fit: BoxFit.cover),
        // background: FadeInImage(
        //   image: NetworkImage(pelicula.getbackgroundImg()),
        //   placeholder: AssetImage('assets/img/loading.gif'),
        //   fadeInDuration: Duration(milliseconds: 150),
        //   fit: BoxFit.cover,
        // ),
      ),
    );
  }
}
