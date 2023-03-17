import 'package:flutter/material.dart';

class MyPreferencePage  extends StatefulWidget {
  const MyPreferencePage ({Key? key}) : super(key: key);

  @override
  _MyPreferencePageState  createState() => _MyPreferencePageState();
}

class _MyPreferencePageState extends State<MyPreferencePage > {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("preferences"),
          bottom: TabBar(
            tabs: [
              Tab(

                icon: Icon(Icons.accessibility_sharp),
              ),
              Tab(
                icon: Icon(Icons.camera_alt_outlined),
              
              ),
              Tab(
                icon: Icon(Icons.baby_changing_station),
              ),
            ],
          ),
        ),
        body:TabBarView(
          children: [
            Text("my preference"),
            Text("my camera"),
            Text("my preference"),

          ],
        )
      ),
    );
  }
}
