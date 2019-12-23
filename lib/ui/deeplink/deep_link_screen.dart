import 'package:flutter/material.dart';

class DeepLinkScreen extends StatefulWidget {
  final String link;

  const DeepLinkScreen({Key key, this.link}) : super(key: key);

  @override
  _DeepLinkScreenState createState() => _DeepLinkScreenState();
}

class _DeepLinkScreenState extends State<DeepLinkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(widget.link),
    ));
  }
}
