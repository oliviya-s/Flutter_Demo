import 'package:flutter/material.dart';
import 'package:untitled/secPage.dart';
import 'package:untitled/thirdPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('Telegram',style: TextStyle(fontFamily: "fontstyle"),),
         backgroundColor: Colors.blue,
         actions: [Icon(Icons.search)],
         elevation: 66,),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child:
        ListView(
          children: [
            DrawerHeader(
              child:
              CircleAvatar(
                
                backgroundImage: NetworkImage("https://is4-ssl.mzstatic.com/image/thumb/Purple126/v4/32/a2/00/32a20005-ecce-43cd-8dd5-1dd52857e291/AppIconLLC-1x_U007emarketing-0-7-0-0-85-220.png/1200x600wa.png"),
                radius: 2,

              ),
            ),
            ListTile(
                tileColor: Colors.white,
                leading: Icon(Icons.group),
                title: Text("Add Group"),
            ),
            SizedBox(height: 10,),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.person),
              title: Text("Contacts"),
            ),
            SizedBox(height: 10,),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.call_sharp),
              title: Text("Calls"),
            ),
            SizedBox(height: 10,),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            SizedBox(height: 10,),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.person_add),
              title: Text("Add Friends"),
            ),


          ],
        ),
      ),
      body:  SingleChildScrollView(
        child: (
        Column(children: [

          Padding(
            padding: const EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute (builder:(context)=>Secpag()));
              },
              child: Card(
                child: Container(
                  child:(

                  Text("MovieHuB",style: TextStyle(fontSize: 25, fontFamily: "fontstyle" ))),
                 color:Colors.lightBlueAccent,
                 height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width,


              ),
          ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute (builder:(context)=>Thirdpag()));
                },
                child: Card(
                  child: Container(
                    child:(
                    Text("SFlix",style: TextStyle(fontSize: 25,fontFamily: "fontstyle"  ))),

                    color:Colors.lightBlueAccent,
                    height: MediaQuery.of(context).size.height*0.25,
                    width: MediaQuery.of(context).size.width,

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(color:Colors.lightBlueAccent,
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width,


                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(color:Colors.lightBlueAccent,
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width,


                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(color:Colors.lightBlueAccent,
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width,


                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(color:Colors.lightBlueAccent,
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width,


                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(color:Colors.lightBlueAccent,
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(color:Colors.lightBlueAccent,
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(color:Colors.lightBlueAccent,
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width,

                ),
              ),
            ),

          ],)


        ),
      ),
    );
  }
}
