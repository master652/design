import 'package:design/screens/dise%C3%B1o_basico.dart';
import 'package:design/screens/scroll_design.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scrollscreen',
      routes: {
        'diseño_basico': (_) => DisenoBasicoScreen(),
        'scrollscreen': (_) => ScrollScreen()
      },
    );
  }
}
