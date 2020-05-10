import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class RecList extends StatefulWidget{
  @override
  _RecList createState() => _RecList();
}
class _RecList extends State<RecList>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photos'),
        backgroundColor: Color.fromRGBO(247, 119, 32, 1),
      ),
      
      );
  }
}