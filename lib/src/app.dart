import 'package:flutter/material.dart';
import './pages/contacts_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ContactApp",
      theme: ThemeData(
         primarySwatch: Colors.blue
      ),
      home: ContactsPage()
    );
  }
}
