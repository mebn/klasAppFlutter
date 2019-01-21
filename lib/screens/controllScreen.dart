import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/portraitOrientation.dart';
import '../components/landscapeOrientation.dart';

class ControllScreen extends StatefulWidget {
  ControllScreen({Key key}) : super(key: key);
  @override
  _ControllScreenState createState() => _ControllScreenState();
}

class _ControllScreenState extends State<ControllScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Kontroller", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
            return orientation == Orientation.portrait ? PortraitOrientation() : LandscapeOrientation();
        },
      ),
    );
  }
}
