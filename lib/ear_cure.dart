import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Ear_cure extends StatefulWidget {
  @override
  _Ear_cureState createState() => _Ear_cureState();
}

class _Ear_cureState extends State<Ear_cure> {
  final _formKey = GlobalKey<FormState>();
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
                                  Text('Stay away from glass windows, doors, cupboards.'),
                                  Divider(
                                      color: Colors.black
                                  ),
                                  Text('Get under a table so that one does not get hurt by falling objects.')
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Text("If one caught indoors at the time of an earthquake..."),
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
                                  Text(' If open space is available nearby, go there.'),
                                  Divider(
                                      color: Colors.black
                                  ),
                                  Text('Keep away from tall chimneys, buildings, balconies and other projections.')
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Text("If one is outdoor at the time of earthquake..."),
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
                                  Text('Move away from display shelves containing objects that may fall.'),
                                  Divider(
                                      color: Colors.black
                                  ),
                                  Text('If you can, take cover and grab something to shield your head and face from falling debris and glass.')
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Text("If you are inside a crowded place..."),
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
                  TextSpan(text: '''• Check if anyone else is hurt. Use first aid at least on the cuts and bruise.\n\n• Keep the streets clear for emergency services.\n\n• Switch off all appliances like the refrigerator, TV or Computers.\n\n• Turn off the gas''', style: TextStyle(fontSize: 20.0)),

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
