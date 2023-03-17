import 'package:flutter/material.dart';
import 'package:my_application/pages/home_page.dart';
class FigTreeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " My FigTree App",
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      home:HomePage() ,
    );
  }

}
