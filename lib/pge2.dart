import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:disaster_flutter_app/ear_cure.dart';

void main() {
  runApp(MaterialApp(
    routes: {

      '/ear_cure':(context)=> Ear_cure()
    },
  ));
}

class Earthquake extends StatefulWidget {
  @override
  _EarthquakeState createState() => _EarthquakeState();
}

class _EarthquakeState extends State<Earthquake> {
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
      body: Column(
        children: <Widget>[
          Container(
            height: 250.0,
            width: 400.0,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
                image: DecorationImage(
                    image: AssetImage(
                        'assets/earthquake.jpg'
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(120.0,90.0,120.0,90.0),
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context)
                        .pushReplacementNamed('/ear_cure');
                  },
                  child: Text(
                    "Cure",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.limeAccent[200].withOpacity(0.5)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.lime),
                            
                          )
                      )
                  )
              ),
            ),

          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                color: Colors.blue[200],
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 8.0),
                      child: Text('Earthquake',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold
                        ),

                      ),
                    ),
                    Container(
                        width: double.infinity,
                        height: 610.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Colors.blue[50],
                            border: Border.all(
                              color: Colors.black,
                              width: 3,
                            )),
                        child: Text.rich(
                          TextSpan(
                            text: '''    Earthquake, any sudden shaking of the ground caused by the passage of seismic waves through Earth’s rocks. Earthquakes occur most often along geologic faults, narrow zones where rock masses move in relation to one another.''',
                            style: TextStyle(fontSize: 21.0),// default text style
                            children: <TextSpan>[
                              TextSpan(text: '\n\nPrecautions : ', style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,)),
                              TextSpan(text: '\n• Do not crowd around damaged areas or buildings \n• Do not waste water. It will be needed for firefighting.\n• Do not spread rumors. They lead to panic and worsen the situation.\n• Be alert for and observe official warnings.\n• Open closet and cabinet doors cautiously as contents may have shifted during the shaking and could fall, creating further damage or injury. \n• Use the stairs, not an elevator.')
                            ],
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}