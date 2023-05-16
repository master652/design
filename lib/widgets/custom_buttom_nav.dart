import 'package:flutter/material.dart';

class CustombottomNav extends StatelessWidget {
  const CustombottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.pink,
        backgroundColor: Color.fromRGBO(55, 57, 84, 1),
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today_outlined,
                size: 30,
              ),
              label: 'Calendario'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pie_chart_outline,
                size: 30,
              ),
              label: 'Grafica'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.supervised_user_circle,
                size: 30,
              ),
              label: 'Usuarios'),
        ]);
  }
}
