import 'package:flutter/material.dart';

import './features/dashboard/pages/dashboard_page.dart';

void main() {
  runApp(Bytebank());
}

class Bytebank extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bytebank',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
        appBarTheme: AppBarTheme(centerTitle: true),
      ),
      home: DashboardPage(),
    );
  }
}
