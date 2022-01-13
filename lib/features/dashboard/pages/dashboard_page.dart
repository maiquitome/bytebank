import 'package:flutter/material.dart';

import '../../../core/widgets/custom_button.dart';
import '../../contacts/contacts/view/pages/contacts_page.dart';

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
              child: CustomButton(
                icon: Icons.monetization_on,
                text: 'Transfer',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (BuildContext context) => ContactsPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
