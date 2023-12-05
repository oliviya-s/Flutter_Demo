import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class Location1 extends StatefulWidget {
  const Location1({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location1> {
  @override
  Position? cposition;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
        body: Column(
          children:[
            SizedBox(height: 100,),
            Center(

               child: MaterialButton(color: Colors.lightBlueAccent,onPressed: (){
                 getCurrentLocation("Oliviya");
               }),
        ),
            Text(cposition==null?"null":  cposition!.latitude.toString())
      ],
    ),
    );
  }
  getCurrentLocation(String o) async {
    cposition= await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
                   print(cposition!.longitude);
                   print(cposition!.latitude);
                  List< Placemark> placemarks= await placemarkFromCoordinates(cposition!.latitude,cposition!.longitude);
                   print(placemarks![0]);
                   List<Location> locations= await locationFromAddress("Gronausestraat 710 , Enschede");
                   print(locations);
                   print(o);

  }
}
