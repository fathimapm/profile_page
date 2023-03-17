import 'package:flutter/material.dart';

class TowerItemWidget extends StatelessWidget{
  String imageUrl;
  String title;
  String body;
  TowerItemWidget (this.imageUrl,this.title,this.body);



  @override
Widget build(BuildContext context){
    return Card(
      elevation: 6,
      shadowColor: Colors.blue,
      child:Column(

        children: [
          Image.network(
            imageUrl,

            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: 240,
          ),
         ListTile(
           leading:FlutterLogo(),
           title: Text(title),
           subtitle: Text(body),
           trailing:Icon(Icons.arrow_forward_ios_outlined),
         )
        ],
      ) ,
    );
  }
}