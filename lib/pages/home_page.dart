import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_application/src/fragments/home_fragment.dart';
import 'package:my_application/src/fragments/cart_fragment.dart';
import 'package:my_application/src/fragments/profile_fragment.dart';

class HomePage extends StatefulWidget{
  @override
 State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    int selectedIndex =0;
List<Widget> fragments =[HomeFragment(),CartFragment(),ProfileFragment()];

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("My Fig Tree App"),
        leading: Icon(Icons.menu_outlined),
      actions: [
        Icon(Icons.account_balance_wallet_outlined),
          SizedBox(width: 16,),
          Icon(Icons.account_balance_wallet_outlined),
          SizedBox(width: 32,),
        ],
        elevation: 10,
        shadowColor: Colors.black,


      ),
      body:SafeArea(
        child:SingleChildScrollView(

              child: fragments[selectedIndex],
       )
         ),


    bottomNavigationBar: BottomNavigationBar(
       currentIndex:selectedIndex,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        selectedLabelStyle: TextStyle(color: Colors.red),
       onTap: (value){
        print(value);
        setState(() {
selectedIndex = value;
         });
       },
        backgroundColor: Colors.grey,
       elevation: 6,
        items: [
        BottomNavigationBarItem(
           icon: Icon(Icons.home_outlined),
          label: "Home"
        ),
         BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
          label: "Cart",

         ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
           label: "Profile"
         ),
      ],

     ),
    );

 }
}