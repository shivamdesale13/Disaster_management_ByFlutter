import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
class Emer_cont extends StatefulWidget {
  @override
  _Emer_contState createState() => _Emer_contState();
}

class _Emer_contState extends State<Emer_cont> {
  TextEditingController _numberCtrl =new TextEditingController();
  TextEditingController _numberCtr2 =new TextEditingController();
  TextEditingController _numberCtr3 =new TextEditingController();
  TextEditingController _numberCtr4 =new TextEditingController();
  TextEditingController _numberCtr5 =new TextEditingController();
  TextEditingController _numberCtr6 =new TextEditingController();
  TextEditingController _numberCtr7 =new TextEditingController();


  @override
  void initstate() {
    super.initState();
    _numberCtrl.text='112';
    _numberCtr2.text='100';
    _numberCtr3.text='101';
    _numberCtr4.text='102';
    _numberCtr5.text='108';
    _numberCtr6.text='011267017281078';
    _numberCtr7.text='9711077372';

  }

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
          SizedBox(height: 35.0,),
          new Center(
            child: new FlatButton(
                onPressed:()async{
                  FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
                },
                child: new Text("NATIONAL EMERGENCY"),
                color: Colors.grey[400],
            ),
          ),
          SizedBox(height: 35.0,),
          new Center(
            child: new FlatButton(
                onPressed:()async{
                  FlutterPhoneDirectCaller.callNumber(_numberCtr2.text);
                },
                child: new Text("POLICE"),color: Colors.grey[400],),
          ),
          SizedBox(height: 35.0,),
          new Center(
            child: new FlatButton(
                onPressed:()async{
                  FlutterPhoneDirectCaller.callNumber(_numberCtr3.text);
                },
                child: new Text("FIRE"),color: Colors.grey[400],),
          ),
          SizedBox(height: 35.0,),
          new Center(
            child: new FlatButton(
                onPressed:()async{
                  FlutterPhoneDirectCaller.callNumber(_numberCtr4.text);
                },
                child: new Text("AMBULANCE"),color: Colors.grey[400],),
          ),
          SizedBox(height: 35.0,),
          new Center(
            child: new FlatButton(
                onPressed:()async{
                  FlutterPhoneDirectCaller.callNumber(_numberCtr5.text);
                },
                child: new Text("DMS"),color: Colors.grey[400],),
          ),
          SizedBox(height: 35.0,),
          new Center(
            child: new FlatButton(
                onPressed:()async{
                  FlutterPhoneDirectCaller.callNumber(_numberCtr6.text);
                },
                child: new Text("NDMA"),color: Colors.grey[400],),
          ),
          SizedBox(height: 35.0,),
          new Center(
            child: new FlatButton(
                onPressed:()async{
                  FlutterPhoneDirectCaller.callNumber(_numberCtr7.text);
                },
                child: new Text("FLOOD HELPLINE"),color: Colors.grey[400],),
          ),
        ],
      ),
    );

  }
}

