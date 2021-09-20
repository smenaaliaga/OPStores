import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            //_storeAppBar(),
            SliverPersistentHeader(
              delegate: MySliverAppBar(expandedHeight: 200),
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) => ListTile(
                  title: Text("Index: $index"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

/*
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
  */
}

class ScreenArguments {
  final String tag;

  ScreenArguments(this.tag);
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    if (args != null) print(args['tag']);

    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        Image.asset('assets/img/juno.jpg', fit: BoxFit.cover),
        Center(
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: Text(
              'XYZ Store',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 23,
              ),
            ),
          ),
        ),
        Positioned(
          top: expandedHeight / 2 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 4,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Card(
              elevation: 10,
              child: SizedBox(
                height: expandedHeight,
                width: MediaQuery.of(context).size.width / 2,
                child: Hero(
                  tag: args['tag'],
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: ClipRRect(
                      child: Image.asset('assets/img/store.png',
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    radius: 50,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
