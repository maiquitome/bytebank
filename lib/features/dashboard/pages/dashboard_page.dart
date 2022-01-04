import 'package:flutter/material.dart';

import '../../../core/widgets/custom_buttom.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/images/bytebank_logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButtom(),
            ),
          ],
        ),
      ),
    );
  }
}
