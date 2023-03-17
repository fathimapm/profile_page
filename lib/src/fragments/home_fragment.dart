import 'package:flutter/material.dart';
import 'package:my_application/src/widgets/tower_item_widget.dart';
class HomeFragment extends StatefulWidget{
  @override
   createState() => _HomeFragmentState();

  }

class _HomeFragmentState extends State<HomeFragment>{
@override
  Widget build(BuildContext context) {
    return Column(
      children: [


  TowerItemWidget("https://earthsky.org/upl/2020/07/John-Meader-katahdin-scaled-1.jpg","Sky","download now"),
        TowerItemWidget("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT57fY-GZdsBqYSDXQbP8rRbcW2_3r8ulFI1A&usqp=CAU","River","download now"),
        TowerItemWidget("https://images.unsplash.com/photo-1623022814403-a196b930e430?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGRhcmslMjB0cmVlfGVufDB8fDB8fA%3D%3D&w=1000&q=80","Tree","download now"),

      ],
    );
  }

}