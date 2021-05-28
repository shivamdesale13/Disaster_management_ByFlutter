import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:disaster_flutter_app/tsunami_cure.dart';

void main() {
  runApp(MaterialApp(
    routes: {

      '/tsunami_cure':(context)=> Tsunami_cure()
    },
  ));
}

class Tsunami extends StatefulWidget {
  @override
  _TsunamiState createState() => _TsunamiState();
}

class _TsunamiState extends State<Tsunami> {
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
                        'assets/tsunami.png'
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(120.0,90.0,120.0,90.0),
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/tsunami_cure');
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
                      child: Text('Tsunami',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold
                        ),

                      ),
                    ),
                    Container(
                        width: double.infinity,
                        height: 830.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Colors.blue[50],
                            border: Border.all(
                              color: Colors.black,
                              width: 3,
                            )),
                        child: Text.rich(
                          TextSpan(
                            text: '''  A tsunami can kill or injure people and damage or destroy buildings and infrastructure as waves come in and go out.''',
                            style: TextStyle(fontSize: 21.0),// default text style
                            children: <TextSpan>[

                              TextSpan(text: '''\n  Tsunamis can: \n •	Travel 20-30 miles per hour with waves 10-100 feet high. \n •	Cause flooding and disrupt transportation, power, communications, and the water supply.''', ),

                              TextSpan(text: '\n\nPrecautions : ', style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,)),
                              TextSpan(text: '\n\n•	If you live near, or regularly visit a coastal area, learn about the risk of tsunami in the area. Some at-risk communities have maps with evacuation zones and routes. If you are a visitor, ask about community plans.'),
                              TextSpan(text: '\n\n•	Know and practice community evacuation plans and map out your routes'),
                              TextSpan(text: '\n\n•	Learn the signs of a potential tsunami, such as an earthquake, a loud roar from the ocean, or unusual ocean behavior, such as a sudden rise or wall of water or sudden draining of water showing the ocean floor.')
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
