import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class PhotosScreen extends StatefulWidget{
  @override
  _PhotosScreen createState() => _PhotosScreen();
}
class _PhotosScreen extends State<PhotosScreen>{
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text('Photos'),
        backgroundColor: Color.fromRGBO(247, 119, 32, 1),
      ),
      //url: "https://www.rudrapatel.ca/copy-of-anya-vid",
      url:"https://ydsnorthyorkca.wordpress.com/photos/",
      withZoom: false,
      );
  }
}