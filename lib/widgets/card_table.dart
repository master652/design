import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.border_all,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.red,
            icon: Icons.assistant_direction,
            text: 'regresar',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.orange,
            icon: Icons.help,
            text: 'Ayuda',
          ),
          _SingleCard(
            color: Colors.pink,
            icon: Icons.gite_outlined,
            text: 'Casa',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.white,
            icon: Icons.phone,
            text: 'llamar',
          ),
          _SingleCard(
            color: Colors.pink,
            icon: Icons.business_center,
            text: 'Centro',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.yellow,
            icon: Icons.call_missed,
            text: 'No llamar',
          ),
          _SingleCard(
            color: Colors.green,
            icon: Icons.cancel_presentation,
            text: 'Cancelar',
          ),
        ])
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const _SingleCard(
      {super.key, required this.icon, required this.text, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 1, sigmaX: 2),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, .7),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: this.color,
                  child: Icon(
                    this.icon,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                SizedBox(height: 10),
                Text(this.text,
                    style: TextStyle(color: this.color, fontSize: 18))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
