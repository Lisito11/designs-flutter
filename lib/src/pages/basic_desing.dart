import 'package:flutter/material.dart';

class BasicDesignPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage("assets/landscape.jpg")),

          // Titulo
          Title(),

          // Button Section
          ButtonSection(),

          //Description
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text("""Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.""")
          )
        ],
      ),
    );
  }
}


// Titulo
class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Oeschinen Lake Campground", style: TextStyle( fontWeight: FontWeight.bold),),
              Text("kandersteg, Switzerland", style: TextStyle(color: Colors.black45),),
            ],
          ),

          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red,),
          Text("41")
        ],
      ),
    );
  }
}

// Button Section
class ButtonSection extends StatelessWidget {
  TextStyle textStyle = TextStyle(color: Colors.blue);
  Color azulito = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(icon: Icons.call, text: "CALL",),
          CustomButton(icon: Icons.navigation, text: "ROUTE",),
          CustomButton(icon: Icons.share, text: "SHARE",),
        ],
      ),
    );
  }
}

// Custom Button
class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue, size: 30,),
        Text(this.text, style: TextStyle(color: Colors.blue),)
      ],
    );
  }
}
