import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Profile")),
      body: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
        'https://static.toiimg.com/photo/59576457.cms'),
                  radius: 65,
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kerala Blaster ",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text("FootBall Team In Kerala"),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          children: [
                            Icon(Icons.star_border_outlined),
                            Text("https:keralablastersfc.in"),

                          ],
                        )),
                  ],
                ),
              ],
            ),
            Row(
                children:[
                  SizedBox(
                    height: 130,
                    width:25,
                  ),
                  Text("Overview",style:TextStyle(fontWeight: FontWeight.bold)
                  ),
                ]),
            Card(
                elevation: 5,
                child:
                ListTile(
                  title: Text("Statictics and records"),
                  trailing: Icon(Icons.arrow_forward_ios),
                )),
            Card(
                elevation: 5,
                child:
                ListTile(
                  title: Text("History"),
                  trailing: Icon(Icons.arrow_forward_ios),
                )),
            Card(
                elevation: 5,
                child:
                ListTile(
                  title: Text("Ownership"),
                  trailing: Icon(Icons.arrow_forward_ios),
                )),
            Card(
                elevation: 5,
                child:
                ListTile(
                  title: Text("Players"),
                  trailing: Icon(Icons.arrow_forward_ios),
                )),
            Center(
              child:Column(mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 100,width: 100,
                    ),
                    Text("Please feel free to contact us for any \n queries complainces and feedback")
                  ]
              ),),
          ]),

    );
  }
}