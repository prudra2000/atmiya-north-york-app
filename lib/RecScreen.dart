//import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/semantics.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class RecScreen extends StatefulWidget{
  @override
  _RecScreen createState() => _RecScreen();
}
class _RecScreen extends State<RecScreen>{
  
  
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text('Recordings'),
        backgroundColor: Color.fromRGBO(247, 119, 32, 1),
      ),
      url: "https://www.rudrapatel.ca/anya-rec",
      withZoom: false,
      );
  }
}