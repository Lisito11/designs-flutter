import 'package:disenos/src/widgets/card_table.dart';
import 'package:flutter/material.dart';

import 'package:disenos/src/widgets/background.dart';
import 'package:disenos/src/widgets/custom_bottom_navigation.dart';
import 'package:disenos/src/widgets/page_title.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Background(),
          //Body
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Titulos
          PageTitle(),

          //Card Table
          CardTable()

        ],
      ),
    );
  }
}
