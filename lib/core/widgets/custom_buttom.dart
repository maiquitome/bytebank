import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({Key key, @required this.onTap}) : super(key: key);

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.0),
        height: 100,
        width: 150,
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.people,
              color: Colors.white,
            ),
            Text(
              'Contacts',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
