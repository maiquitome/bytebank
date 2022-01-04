import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
        children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/images/bytebank_logo.png'),
            ),
        ],
      ),
    );
  }
}
