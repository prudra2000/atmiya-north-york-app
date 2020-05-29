import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'InfoScreen.dart';
import 'NewsScreen.dart';
import 'RideScreen.dart';
import 'VidScreen.dart';
import 'RecScreen.dart';
import 'PhotosScreen.dart';
import 'RecPage/listSabha.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Atmiya North York Sabha',
        debugShowCheckedModeBanner: false,
        home: new HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  AudioPlayer audioPlugin = AudioPlayer();
  String url =
      'gs://atmiya-north-york-sabha.appspot.com/Rec/Sabha_Feb_13_2020_Vakta-Kalpeshbhai.mp3';
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromRGBO(255, 241, 203, 1),
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Atmiya North York Sabha'),
        backgroundColor: Color.fromRGBO(247, 119, 32, 1),
      ),
      body: Column(
        children: <Widget>[
          new Expanded(
            child: GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                        icon: new Image.asset('assets/images/Rec.png'),
                        iconSize: 150,
                        onPressed: () {
                          Route route = new MaterialPageRoute(
                              builder: (context) => RecScreen());
                          Navigator.push(context, route);
                        }),
                    Text(
                      'Recordings',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                        icon: new Image.asset('assets/images/Vid.png'),
                        iconSize: 150,
                        onPressed: () {
                          Route route = new MaterialPageRoute(
                              builder: (context) => JsonPage());
                          Navigator.push(context, route);
                        }),
                    Text(
                      'Videos',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                        icon: new Image.asset('assets/images/Photos.png'),
                        iconSize: 150,
                        onPressed: () {
                          Route route = new MaterialPageRoute(
                              builder: (context) => PhotosScreen());
                          Navigator.push(context, route);
                        }),
                    Text(
                      'Photos',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                        icon: new Image.asset('assets/images/Rides.png'),
                        iconSize: 150,
                        onPressed: () {
                          Route route = new MaterialPageRoute(
                              builder: (context) => RideScreen());
                          Navigator.push(context, route);
                        }),
                    Text(
                      'Rides',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                        icon: new Image.asset('assets/images/News.png'),
                        iconSize: 150,
                        onPressed: () {
                          Route route = new MaterialPageRoute(
                              builder: (context) => NewsScreen());
                          Navigator.push(context, route);
                        }),
                    Text(
                      'News Feed',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                        icon: new Image.asset('assets/images/Info.png'),
                        iconSize: 150,
                        onPressed: () {
                          Route route = new MaterialPageRoute(
                              builder: (context) => InfoScreen());
                          Navigator.push(context, route);
                        }),
                    Text(
                      'Info',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                  ],
                ),
              ),
            ]),),
        ],
  
      ),
    );
  }
}



class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(),
    );
  }
}
