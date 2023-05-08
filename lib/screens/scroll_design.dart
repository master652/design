import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  final now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      children: [
        page1(now: now),
        Page2(),
      ],
    ));
  }
}

class page1 extends StatelessWidget {
  const page1({
    super.key,
    required this.now,
  });

  final DateTime now;

  @override
  Widget build(BuildContext context) {
    return Stack(
      //Stack sirve para ser el BackgroundImage
      children: [Background(), MainContent(now: now)],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
    required this.now,
  });

  final DateTime now;

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
        fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 70,
          ),
          Text(
            '11°',
            style: textStyle,
          ),
          Text(
            'Miercoles',
            style: textStyle,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff51c3de),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Image(image: AssetImage('assets/scroll-1.png')));
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(onPressed: () {}, child: Text('Bienvenido')),
    );
  }
}
