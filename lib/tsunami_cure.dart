import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Tsunami_cure extends StatefulWidget {
  @override
  _Tsunami_cureState createState() => _Tsunami_cureState();
}

class _Tsunami_cureState extends State<Tsunami_cure> {
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
                                  Text(' When the shaking stops, gather members of your household and review your evacuation plan. A tsunami may be coming within minutes. '),
                                  Divider(
                                      color: Colors.black
                                  ),
                                  Text('Get to higher ground as far inland as possible. Watching a tsunami from the beach or cliffs could put you in grave danger. If you can see the wave, you are too close to escape it.')
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Text("If You Feel a Strong Coastal Earthquake"),
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
                                  Text(' Before driving anywhere, it is best to listen carefully to rescue officials who will be coordinating evacuation plans.'),
                                  Divider(
                                      color: Colors.black
                                  ),
                                  Text('Be aware of risks such as hypothermia from cold water or drowning from running water.')
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Text("What if you stuck into the flood water?"),
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
                                  Text(' It produces a vacuum effect that sucks coastal water seaward and exposes harbor and sea floors.'),
                                  Divider(
                                      color: Colors.black
                                  ),
                                  Text('A tsunami is usually composed of a series of waves, called a wave train, so its destructive force may be compounded as successive waves reach shore.')
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Text("What Happens When It Hits Land?"),
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
                  TextSpan(text: '1. First, protect yourself from an Earthquake. Drop, Cover, then Hold On.',style: TextStyle(fontSize: 18.0)),
                  TextSpan(text: '\n\n2. Get to high ground as far inland as possible. You can protect yourself from a tsunami while also protecting yourself and your family from COVID-19. Protect yourself from the effects of a tsunami by moving from the shore to safe, high grounds outside tsunami hazard areas.',style: TextStyle(fontSize: 18.0)),
                  TextSpan(text: '\n\n3. Be alert to signs of a tsunami, such as a sudden rise or draining of ocean waters.',style: TextStyle(fontSize: 18.0)),
                  TextSpan(text: '\n\n4. Listen to emergency information and alerts.',style: TextStyle(fontSize: 18.0))
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
