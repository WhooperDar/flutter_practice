// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteProject(),
    ));

// ignore: use_key_in_widget_constructors
class QuoteProject extends StatefulWidget {
  @override
  _QuoteProjectState createState() => _QuoteProjectState();
}

class _QuoteProjectState extends State<QuoteProject> {
  List<Quote> quotes = [
    Quote(text: "You are loved", author: "Darius"),
    Quote(text: "You are valued", author: "Darius"),
    Quote(text: "You are significant", author: "Darius")
  ];

  // Card Widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      // ignore: duplicate_ignore
      appBar: AppBar(
        title: Text("Quote List"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      // ignore: duplicate_ignore
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 10.0),
        child: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add),
      ),
    );
  }
}
