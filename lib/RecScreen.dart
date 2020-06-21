//import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; 
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class RecScreen extends StatefulWidget{
  @override
  _RecScreen createState() => _RecScreen();
}
class _RecScreen extends State<RecScreen>{
  _launchURL() async {
    const url = 'https://drive.google.com/drive/folders/1kxcD_ySRQVjjyuEkUqx43ob6wnGVCLn3?usp=sharing';
    if (await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could not launch $url';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text('Recordings'),
        backgroundColor: Color.fromRGBO(247, 119, 32, 1),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.file_download),
            onPressed: _launchURL,
          )
        ],

      ),
      //url: "https://www.rudrapatel.ca/anya-rec",
      url: "https://ydsny.sounder.fm/show/yds-north-york-sabha",
      withZoom: false,
      );
  }
}