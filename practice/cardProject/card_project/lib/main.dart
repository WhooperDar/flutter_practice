import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
void main() => runApp(MaterialApp(
      home: CardProfile(),
    ));

// ignore: use_key_in_widget_constructors
class CardProfile extends StatefulWidget {
  @override
  _CardProfileState createState() => _CardProfileState();
}

class _CardProfileState extends State<CardProfile> {
  @override
  int progLevel = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[900],
      appBar: AppBar(
        title: Text(
          "Programmer Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent[800],
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            progLevel++;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/me.jpg"),
                    radius: 50.0,
                  ),
                  Divider(
                    height: 10.0,
                  ),
                  Text(
                    "Megabyte",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Text(
              "NAME",
              style: TextStyle(
                letterSpacing: 2.0,
              ),
            ),
            Divider(
              height: 10.0,
            ),
            Text(
              "Darius",
              style: TextStyle(
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent[800],
              ),
            ),
            Divider(
              height: 25.0,
            ),
            Text(
              "PROGRAMMING LEVEL",
              style: TextStyle(
                letterSpacing: 2.0,
              ),
            ),
            Divider(
              height: 10.0,
            ),
            Text(
              "$progLevel",
              style: TextStyle(
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent[800],
              ),
            ),
            Divider(
              height: 25.0,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Icon(Icons.email),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "kimdarius.panis@cit.edu",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 160.0,
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  progLevel--;
                });
              },
              label: Text("Decrease"),
              icon: Icon(Icons.offline_pin),
            ),
          ],
        ),
      ),
    );
  }
}
