import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:disaster_flutter_app/vol_cure.dart';

void main() {
  runApp(MaterialApp(
    routes: {

      '/vol_cure':(context)=> Vol_cure()
    },
  ));
}
class Volcano extends StatefulWidget {
  @override
  _VolcanoState createState() => _VolcanoState();
}

class _VolcanoState extends State<Volcano> {
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
                      'assets/volcano.jpg'
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(120.0,90.0,120.0,90.0),
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/vol_cure');
                  },
                  child: Text(
                    "Cure",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(5)),
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
                decoration: BoxDecoration(
                    color: Colors.blue[200],
                    ),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 8.0),
                      child: Text('Volcano',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold
                        ),

                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 700.0,
                      padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Colors.blue[50],
                            border: Border.all(
                              color: Colors.black,
                              width: 3,
                            )),
                      child: Text.rich(
                        TextSpan(
                          text: '''      A volcano is a rupture in the curst of a planetary-mass object, such as  Earth, that allows hot lava,  volcanic ash, and gases to escape from a  magma chamber below the surface.''',
                          style: TextStyle(fontSize: 19.0),// default text style
                          children: <TextSpan>[
                            TextSpan(text: '\n\nPrecautions : ', style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,)),
                            TextSpan(text: '\n\n 1.  Listen to local alerts and authorities for information on areas to avoid and shelter locations.', style: TextStyle()),
                            TextSpan(text: '\n\n 2.  Avoid wading in floodwater, which can contain dangerous debris. Water may be deeper than it appears.', style: TextStyle()),
                            TextSpan(text: '\n\n 3.  Be aware of the risk of electrocution.  Underground or downed power lines can electrically charge water. Do not touch electrical equipment if it is wet or if you are standing in water.', style: TextStyle()),
                            TextSpan(text: '\n\n 4.  Stay away from damaged buildings, roads, and bridges.', style: TextStyle()),
                            TextSpan(text: '\n\n 5.  Document property damage with photographs. Conduct an inventory andcontact your insurance company for assistance.', style: TextStyle()),

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
