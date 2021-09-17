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
                icon: Icons.store,
                name: 'Tienda ABC',
                description: 'Descripción de la tienda',
              ),
            ],
          ),
          TableRow(
            children: [
              _SingleCard(
                color: Colors.white,
                icon: Icons.store,
                name: 'XYZ Store',
                description: 'Descripción de la tienda',
              ),
            ],
          ),
          TableRow(
            children: [
              _SingleCard(
                color: Colors.white,
                icon: Icons.store,
                name: 'Bajones',
                description: 'Descripción de la tienda ',
              ),
            ],
          ),
          TableRow(
            children: [
              _SingleCard(
                color: Colors.white,
                icon: Icons.store,
                name: 'uwu clothes',
                description: 'Descripción de la tienda ',
              ),
            ],
          ),
          TableRow(
            children: [
              _SingleCard(
                color: Colors.white,
                icon: Icons.store,
                name: 'Papeleria BBB',
                description: 'Descripción de la tienda ',
              ),
            ],
          ),
          TableRow(
            children: [
              _SingleCard(
                color: Colors.white,
                icon: Icons.store,
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

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String name;
  final String description;

  const _SingleCard({
    required this.icon,
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
        Navigator.pushNamed(context, 'store');
      },
      child: storeCard,
    );
  }

  _StoreImage() {
    return Row(
      children: [
        SizedBox(width: 10),
        CircleAvatar(
          backgroundColor: Colors.black12,
          child: Icon(
            icon,
            size: 45,
            color: Color.fromRGBO(47, 48, 52, 1),
          ),
          radius: 50,
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
