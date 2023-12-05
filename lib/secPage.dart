import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/location.dart';

class Secpag extends StatefulWidget {
  const Secpag({Key? key}) : super(key: key);

  @override
  _SecpagState createState() => _SecpagState();
}

class _SecpagState extends State<Secpag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body:
          Column(
          children: [
            Image.asset("assets/img1.jpg",height: 400,width: 400,),
            InkWell(
              onTap: (){

              },
              child: FloatingActionButton(child: Text("+"),  onPressed: ()
    {
      Navigator.push(context, MaterialPageRoute (builder:(context)=>Location1()));
    }
              ),
            ),
          ],
        ),
      );


  }
}

