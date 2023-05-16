import 'package:design/widgets/background.dart';
import 'package:design/widgets/card_table.dart';
import 'package:design/widgets/page_title.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_buttom_nav.dart';

class Home_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background

          Background(),

          _HomeBody()
        ],
      ),
      bottomNavigationBar: CustombottomNav(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Titulo
          PageTitle(),

          //card Table
          CardTable()
        ],
      ),
    );
  }
}
