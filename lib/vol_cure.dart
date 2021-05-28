import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Vol_cure extends StatefulWidget {
  @override
  _Vol_cureState createState() => _Vol_cureState();
}

class _Vol_cureState extends State<Vol_cure> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Volcano",
        style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold
    ),),
    centerTitle: true,
    ),

    body: Column(
      children: [
        SizedBox(height: 55.0,),

        Center(
          child: RaisedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Positioned(
                            right: -40.0,
                            top: -40.0,
                            child: InkResponse(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: CircleAvatar(
                                child: Icon(Icons.close),
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text('Wear a dust mask designed to protect against lung irritation from small particles. '),
                                Divider(
                                    color: Colors.black
                                ),
                                Text('Protect your eyes by wearing goggles. Wear eyeglasses, not contact lenses.')
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: Text("What one should do if he/she is stuck in Ash Fall ?",textAlign: TextAlign.center,style: TextStyle(fontSize: 16.0),),
          ),
        ),
        SizedBox(height: 25.0,),

        Center(
          child: RaisedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Positioned(
                            right: -40.0,
                            top: -40.0,
                            child: InkResponse(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: CircleAvatar(
                                child: Icon(Icons.close),
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text('If you are in home, close all window, doors, and dampers to keep volcanic ash from entering.'),
                                Divider(
                                    color: Colors.black
                                ),
                                Text('Put all machinery inside a garage or barn to protect it from volcanic ash.')
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: Text("   What would you do if you are in home during disaster?",textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0),),
          ),
        ),
        SizedBox(height: 25.0,),

        Center(
          child: RaisedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Positioned(
                            right: -40.0,
                            top: -40.0,
                            child: InkResponse(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: CircleAvatar(
                                child: Icon(Icons.close),
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text('Return only when authorities say it is safe to do so.'),
                                Divider(
                                    color: Colors.black
                                ),
                                Text('Continue listening to local news or a NOAA Weather Radio for updated information and instructions.')
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: Text("        What you do after volcanic eruption?               ",style: TextStyle(fontSize: 18.0)),
          ),
        ),
        SizedBox(height: 35.0,),
        Container(
          width: 350,
          height: 370,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(5),
          child: Text.rich(
            TextSpan(
              children: <TextSpan>[
                TextSpan(text: ' 1. Seek shelter indoors if possible.\n 2. Stay out of designated restricted zones. Effects of a volcanic eruption can be experienced many miles from a volcano.\n', style: TextStyle(fontSize: 20.0)),
                TextSpan(text: ' 3. Avoid low-lying areas, areas downwind of the volcano, and river valleys downstream of the volcano. Debris and ash will be carried by wind and gravity. Stay in areas where you will not be further exposed to volcanic eruption hazards. Trying to watch an erupting volcano up close is a deadly idea.', style: TextStyle(fontSize: 20.0 )),

              ],
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(
                color: Colors.blue[100],
                width: 5,
              )),
        ),
      ],
    ),
    );

  }
}
