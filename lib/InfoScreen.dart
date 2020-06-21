import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class InfoScreen extends StatefulWidget{
  @override
  _InfoScreen createState() => _InfoScreen();
}
class _InfoScreen extends State<InfoScreen>{
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      
      appBar: AppBar(
        title: Text('News Feed'),
        backgroundColor: Color.fromRGBO(247, 119, 32, 1),
      ),
      url: "https://ydsnorthyorkca.wordpress.com/information/",
      withZoom: false,
      );
  }
}

