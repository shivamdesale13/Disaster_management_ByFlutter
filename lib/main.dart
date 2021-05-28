


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:disaster_flutter_app/pge1.dart';
import 'package:disaster_flutter_app/pge2.dart';
import 'package:disaster_flutter_app/pge3.dart';
import 'package:disaster_flutter_app/vol_cure.dart';
import 'package:disaster_flutter_app/ear_cure.dart';
import 'package:disaster_flutter_app/tsunami_cure.dart';
import 'package:disaster_flutter_app/emer_cont.dart';



void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home':(context)=> Home(),
      '/volcano':(context)=> Volcano(),
      '/earthquake':(context)=> Earthquake(),
      '/tsunami':(context)=> Tsunami(),
      '/vol_cure':(context)=> Vol_cure(),
      '/ear_cure':(context)=> Ear_cure(),
      '/tsunami_cure':(context)=> Tsunami_cure(),
      '/emer_cont':(context)=> Emer_cont(),

    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Disaster Management",
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.white, Colors.blue])),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 35.0,),
              SizedBox(
                width: 250.0,
                height: 60.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/volcano');
                      },
                      child: Text(
                        "VOLCANO",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red),
                              )
                          )
                      )
                  ),
                ),
              ),
              SizedBox(height: 35.0,),
              SizedBox(
                width: 250.0,
                height: 60.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/earthquake');
                      },
                      child: Text(
                        "EARTHQUAKE",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red),
                              )
                          )
                      )
                  ),
                ),
              ),
              SizedBox(height: 35.0,),

              SizedBox(
                width: 250.0,
                height: 60.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/tsunami');
                      },
                      child: Text(
                        "TSUNAMI",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.red),
                              )
                          )
                      )
                  ),
                ),
              ),

              SizedBox(height: 65.0,),
              Container(
                height: 150.0,
                width: 250.0,
                color: Colors.transparent,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange[600].withOpacity(0.6),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),

                      child: Column(
                        children: [

                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0,48.0,8.0,0.0),
                            child: ElevatedButton.icon(onPressed: (){Navigator.pushNamed(context, '/emer_cont');}, icon: Icon(Icons.add_call, size: 60,), label: Text("EMERGENCY\nCONTACTS",
                              style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,)),
                          )
                        ],
                      ),

                ),
              )
            ]
          ),
        ),
      ),


    );
  }
}
