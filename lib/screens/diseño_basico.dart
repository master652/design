import 'package:flutter/material.dart';

class DisenoBasicoScreen extends StatelessWidget {
  const DisenoBasicoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //Imagen Central
        Image(image: AssetImage('assets/landscape.jpg')),

        //Title Widget
        Title(),

        // Botom Section
        BotomSection(),
        //Description
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
              'Eiusmod adipisicing incididunt voluptate quis incididunt sit sit dolor esse est elit. Reprehenderit dolore minim consequat in sit duis. Mollit nisi culpa deserunt aliquip. Excepteur esse occaecat et officia dolore. Duis amet cillum laborum anim nostrud proident aute quis dolore cillum culpa occaecat minim. Occaecat consequat mi.'),
        )
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41'),
        ],
      ),
    );
  }
}

class BotomSection extends StatelessWidget {
  const BotomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomBottom(
            icon: Icons.call,
            text: 'Call',
          ),
          CustomBottom(
            icon: Icons.map_outlined,
            text: 'Route',
          ),
          CustomBottom(
            icon: Icons.share_outlined,
            text: 'Share',
          ),
        ],
      ),
    );
  }
}

class CustomBottom extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomBottom({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(
          this.text,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
