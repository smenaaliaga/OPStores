import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Tiendas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        children: [
          TableRow(
            children: [
              _SingleCard(
                color: Colors.white,
                tag: 'a',
                name: 'Tienda ABC',
                description: 'Descripción de la tienda',
              ),
            ],
          ),
          TableRow(
            children: [
              _SingleCard(
                color: Colors.white,
                tag: 'b',
                name: 'XYZ Store',
                description: 'Descripción de la tienda',
              ),
            ],
          ),
          TableRow(
            children: [
              _SingleCard(
                color: Colors.white,
                tag: 'c',
                name: 'Bajones',
                description: 'Descripción de la tienda ',
              ),
            ],
          ),
          TableRow(
            children: [
              _SingleCard(
                color: Colors.white,
                tag: 'd',
                name: 'uwu clothes',
                description: 'Descripción de la tienda ',
              ),
            ],
          ),
          TableRow(
            children: [
              _SingleCard(
                color: Colors.white,
                tag: 'e',
                name: 'Papeleria BBB',
                description: 'Descripción de la tienda ',
              ),
            ],
          ),
          TableRow(
            children: [
              _SingleCard(
                color: Colors.white,
                tag: 'f',
                name: 'TeTienda',
                description: 'Descripción de la tienda ',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ScreenArguments {
  final String tag;

  ScreenArguments(this.tag);
}

class _SingleCard extends StatelessWidget {
  final String tag;
  final Color color;
  final String name;
  final String description;

  const _SingleCard({
    required this.tag,
    required this.color,
    required this.name,
    required this.description,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final storeCard = Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        height: 120,
        child: Card(
          child: Row(
            children: [
              _StoreImage(),
              SizedBox(width: 10),
              _StoreDescription(),
            ],
          ),
        ));

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'store',
            arguments: {'tag': tag, 'name': name});
      },
      child: storeCard,
    );
  }

  _StoreImage() {
    return Row(
      children: [
        SizedBox(width: 10),
        Hero(
          tag: tag,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: ClipRRect(
              child: Image.asset('assets/img/store.png', fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(50.0),
            ),
            radius: 50,
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }

  _StoreDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ]),
        SizedBox(height: 8),
        Text(description, style: TextStyle(color: color, fontSize: 15))
      ],
    );
  }
}
