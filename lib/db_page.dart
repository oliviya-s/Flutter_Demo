import 'package:flutter/material.dart';

class  ProfPage extends StatelessWidget {
  const ProfPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(leading: Icon(Icons.menu),
              title: Text("Profile Page"),),

     body:Column(
           children:[
             Text("Indian Super League",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),

  ]
  ),

    );
  }
}
