import 'package:design/screens/dise%C3%B1o_basico.dart';
import 'package:design/screens/home_screen.dart';
import 'package:design/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'diseño_basico': (_) => DisenoBasicoScreen(),
        'scrollscreen': (_) => ScrollScreen(),
        'home_screen': (_) => Home_Screen()
      },
    );
  }
}
