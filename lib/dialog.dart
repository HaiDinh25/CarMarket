import 'package:flutter/material.dart';

void showMaterialDialog(BuildContext context, String text) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(text),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Close')),
            TextButton(
              onPressed: () {
                print('HelloWorld!');
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            )
          ],
        );
      });
}