import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
            children: [
              _SingleCard(color: Colors.blue, icon: Icons.apps, text: "General",),
              _SingleCard(color: Colors.pinkAccent, icon: Icons.cake, text: "Transport",),
            ]
        ),
        TableRow(
            children: [
              _SingleCard(color: Colors.purpleAccent, icon: Icons.shop, text: "Shopping",),
              _SingleCard(color: Colors.redAccent, icon: Icons.airplanemode_active_outlined, text: "Airplane",),
            ]
        ),
        TableRow(
            children: [
              _SingleCard(color: Colors.deepOrange, icon: Icons.cloud, text: "Cloud",),
              _SingleCard(color: Colors.indigo, icon: Icons.beach_access_outlined, text: "Umbrella",),
            ]
        ),
        TableRow(
            children: [
              _SingleCard(color: Colors.deepOrange, icon: Icons.cloud, text: "Cloud",),
              _SingleCard(color: Colors.indigo, icon: Icons.beach_access_outlined, text: "Umbrella",),
            ]
        ),
      ],
    );
  }
}


class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({Key? key,
   required this.icon,
   required this.color,
   required this.text
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: this.color,
              child: Icon(this.icon, size: 35, color: Colors.white,),
              radius: 30,
            ),
            SizedBox(height: 10,),
            Text(this.text, style: TextStyle(color: this.color, fontSize: 18),)
          ],
        ),
    );
  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground(
      {Key? key, required this.child}
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(62, 66, 107, 0.7)
              ),
              child: child
          ),
        ),
      ),
    );
  }
}

