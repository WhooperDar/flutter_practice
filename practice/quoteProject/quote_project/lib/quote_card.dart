// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'quote.dart';

// ignore: must_be_immutable
class QuoteCard extends StatelessWidget {
  late Quote quote;
  late Function() delete;

  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(5.0, 7.0, 5.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text ?? "default value",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 18.0,
                letterSpacing: 2.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 10.0),
            Text(
              quote.author ?? "default value",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 14.0,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 10.0),
            TextButton.icon(
              onPressed: delete,
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.delete,
                color: Colors.redAccent,
              ),
              // ignore: prefer_const_constructors
              label: Text("delete", style: TextStyle(color: Colors.redAccent)),
            ),
          ],
        ),
      ),
    );
  }
}
