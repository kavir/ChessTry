import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

void main() {
  runApp(new MaterialApp(home: new application()));
}

class application extends StatefulWidget {
  @override
  _applicationState createState() => _applicationState();
}

class _applicationState extends State<application> {
  final GlobalKey<ScaffoldState> _skey = new GlobalKey<ScaffoldState>();

  void method() {
    _skey.currentState
        .showSnackBar(new SnackBar(content: new Text('activated snackbar')));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _skey,
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            method();
          },
          child: new Text('activate snackbar'),
        ),
      ),
    );
  }
}
