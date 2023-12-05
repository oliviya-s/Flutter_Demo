import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/fourthPage.dart';

class Thirdpag extends StatefulWidget {
  const Thirdpag({Key? key}) : super(key: key);

  @override
  _ThirdpagState createState() => _ThirdpagState();
}

class _ThirdpagState extends State<Thirdpag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
      ),
      backgroundColor: Colors.lightBlue,
      body: Column(
        children: [
         Image.asset("assets/img1.jpg",height: 400,width: 400,),

          InkWell(
            onTap: (){

            },
            child: FloatingActionButton(child: Text("Tap"),  onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute (builder:(context)=>FourthPage()));
            }
            ),
          ),
      ],
      ),
    );
  }
}
