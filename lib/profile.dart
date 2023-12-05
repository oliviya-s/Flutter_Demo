import 'package:flutter/material.dart';
import 'package:untitled/first_fragment.dart';
import 'package:untitled/sec_fragment.dart';
import 'package:untitled/third_fragment.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int selectedIndex= 0;
  List<Widget> fragments=[FirstFragment(),SecondFragment(),ThirdFragment()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Profile"),),

      body:fragments[selectedIndex],
  bottomNavigationBar: BottomNavigationBar(
  currentIndex:selectedIndex,
  onTap: (index){
  setState((){
  selectedIndex= index;
  });
  },
  items: [
  BottomNavigationBarItem(icon: Icon(Icons.home),
  label: "Home"),
  BottomNavigationBarItem(icon: Icon(Icons.add),
  label: ""),
  BottomNavigationBarItem(icon: Icon(Icons.home),
  label:"home")
  ],
  ),
  );

  }
}



