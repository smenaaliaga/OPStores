import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Tiendas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        children: [
          TableRow(children: [
            _SingleCard(
              color: Colors.white,
              icon: Icons.store,
              name: 'Nombre de la tienda',
              description: 'Descripción de la tienda bla bla bla',
            ),
          ]),
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
    return Container(
      margin: EdgeInsets.all(10),
      child: Container(
        height: 140,
        width: 180,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.95),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            _StoreImage(),
            _StoreDescription(),
          ],
        ),
      ),
    );
  }

  _StoreImage() {
    return Row(
      children: [
        SizedBox(width: 10),
        CircleAvatar(
          backgroundColor: Colors.grey,
          child: Icon(
            icon,
            size: 45,
            color: Colors.deepPurple,
          ),
          radius: 50,
        ),
        SizedBox(width: 30),
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
            child: Icon(
              icon,
              size: 45,
              color: Colors.deepPurple,
            ),
          ),
        ]),
        SizedBox(height: 8),
        Text(description, style: TextStyle(color: color, fontSize: 15))
      ],
    );
  }
}
