import 'package:flutter/material.dart';
import 'package:un1verse/main.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () => auth.logout(),
          )
        ],
      ),
    );
  }
}