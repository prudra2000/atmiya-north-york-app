import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class NewsScreen extends StatefulWidget{
  @override
  _NewsScreen createState() => _NewsScreen();
}
class _NewsScreen extends State<NewsScreen>{
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      
      appBar: AppBar(
        title: Text('News Feed'),
        backgroundColor: Color.fromRGBO(247, 119, 32, 1),
      ),
      url: "https://ydsnorthyorkca.wordpress.com/new/",
      withZoom: false,
      );
  }
}