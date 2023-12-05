import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:parish_app/UI/ward_display.dart';
//import 'package:parish_app/bloc/WardBloc.dart';
//import 'drawer.dart';

class Ward extends StatefulWidget {
  @override
  _WardState createState() => _WardState();
}

class _WardState extends State<Ward> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xff6998AB),
        title: Text("Ward"),
      ),
      body:SingleChildScrollView(
        child: (
            Column(children: [

            Padding(
            padding: const EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
            child: InkWell(
            onTap: (){
      Navigator.push(context, MaterialPageRoute (builder:(context)=>Ward_display(ward: state.ward!,index: index,)));},

        child: Card(
          child: Container(
            child:(

              // shape: RoundedRectangleBorder(
              //  borderRadius: BorderRadius.circular(15.0),
              //  ),
       Text("MovieHuB",style: TextStyle(fontSize: 25, fontFamily: "fontstyle" ))),
            color:Colors.lightBlueAccent,
            height: MediaQuery.of(context).size.height*0.25,
            width: MediaQuery.of(context).size.width,


          ),
        ),
      ),
    ),],)
    ),),);
    //        ListView.builder(
    //           itemCount: 9,
    //           itemBuilder: (BuildContext context, int index) {
    //             return InkWell(
    //               onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=>Ward_display(ward: state.ward!,index: index,)));},
    //               child: ListTile(
    //                 leading: Icon(Icons.group),
    //                 title: (Text("vhh"
    //
    //                   ,style: TextStyle(color: Colors.black, fontSize: 18),
    //                 ),),
    //               ),
    //             ),
    // ),);}}
