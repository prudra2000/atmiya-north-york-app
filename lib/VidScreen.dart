import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class VidScreen extends StatefulWidget{
  @override
  _VidScreen createState() => _VidScreen();
}
class _VidScreen extends State<VidScreen>{
  
  @override
  
  void initState() { 
    Firestore.instance.collection('books').document().setData({ 'title': 'App Rudra', 'author': 'Das Na Das' });
    super.initState();
    
  }
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text('Videos'),
        backgroundColor: Color.fromRGBO(247, 119, 32, 1),
      ),
      url: "https://www.rudrapatel.ca/copy-of-anya-rec",
      withZoom: false,
      );
  }
}