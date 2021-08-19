import 'package:flutter/material.dart';
// import 'package:peliculas/models/pelicula_model.dart';
// import 'package:peliculas/providers/peliculas_providers.dart';

class DataSearch extends SearchDelegate {
  var seleccion = '';
  // final peliculasProvider = new PeliculasProvider();

  final peliculas = [
    'Batman',
    'Spiderman',
    'Ironman',
    'Ironman 2',
    'Ironman 3',
    'Ironman 4',
    'Superman',
    'Hulk',
    'Antman',
  ];
  final peliculasRecientes = [
    'Batman',
    'Capitan America',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  // Widget buildSuggestions(BuildContext context) {
  //   if (query.isEmpty) return Container();

  //   return FutureBuilder(
  //     future: peliculasProvider.buscarPelicula(query),
  //     builder: (BuildContext context, AsyncSnapshot<List<Pelicula>> snapshot) {
  //       if (snapshot.hasData) {
  //         final peliculas = snapshot.data;

  //         return ListView(
  //           children: peliculas.map((p) {
  //             return ListTile(
  //               leading: FadeInImage(
  //                 image: NetworkImage(p.getPosterImg()),
  //                 placeholder: AssetImage('assets/img/no-image.jpg'),
  //                 width: 50.0,
  //                 fit: BoxFit.contain,
  //               ),
  //               title: Text(p.title),
  //               subtitle: Text(p.originalTitle),
  //               onTap: () {
  //                 close(context, null);
  //                 p.uniqueId = '';
  //                 Navigator.pushNamed(context, 'detalle', arguments: p);
  //               },
  //             );
  //           }).toList(),
  //         );
  //       } else {
  //         return Center(child: CircularProgressIndicator());
  //       }
  //     },
  //   );
  // }

  @override
  Widget buildResults(Object context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }

/*
  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(seleccion),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final listaSugerida = (query.isEmpty)
        ? peliculasRecientes
        : peliculas
            .where((p) => p.toLowerCase().startsWith(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: listaSugerida.length,
      itemBuilder: (context, i) {
        return ListTile(
          leading: Icon(Icons.movie),
          title: Text(listaSugerida[i]),
          onTap: () {
            seleccion = listaSugerida[i];
            showResults(context);
          },
        );
      },
    );
  }
*/
}
