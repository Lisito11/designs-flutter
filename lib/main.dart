import 'package:disenos/src/pages/home_page.dart';
import 'package:disenos/src/pages/scroll_design.dart';
import 'package:flutter/material.dart';

import 'package:disenos/src/pages/basic_desing.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_page',
      routes: {
        'basic_design': (_) => BasicDesignPage(),
        'scroll_page': (_) => ScrollPage(),
        'home_page': (_) => HomePage(),
      },
    );
  }



}



