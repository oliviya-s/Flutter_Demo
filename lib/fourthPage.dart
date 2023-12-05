import 'package:flutter/material.dart';

import 'fifthPage.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
      ),
      body:


      Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: 10,

              itemBuilder: (BuildContext context,int index){

                return ListTile(

                    leading: Text("$index",
                        style: TextStyle(

                        color: Colors.lightBlueAccent,fontSize: 15),
                    ),

                    trailing: Icon(Icons.group_add),

                    title:Text("Channel")

                );

              }

          ),
          InkWell(
            onTap: (){

            },
            child: FloatingActionButton(child: Text("Tap"),  onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute (builder:(context)=>FifthPage()));
            }
            ),
          ),
        ],
      ),





    );
  }
}
