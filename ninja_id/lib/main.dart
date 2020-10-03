import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget { // creates state class
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> { // stateful object

  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('ID Card'),
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {
          setState(() => age++)
        }
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/martin.jpeg'),
                radius: 60,
              ),
            ),
            Divider(
              height: 90,
              thickness: 2,
              color: Colors.grey,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              )
            ),
            SizedBox(height: 10),
            Text(
                'Martin Harrison',
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontSize: 28,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(height: 30),
            Text(
                'AGE',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                )
            ),
            SizedBox(height: 10),
            Text(
                '$age', // reference variable
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontSize: 28,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(height: 30),
            Row(
              children:<Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                  ),
                SizedBox(width: 10),
                Text(
                  'martin.harrison1@ovoenergy.com',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    letterSpacing: 1,
                  ),
                )
              ]
            )
          ]
        )
      )
    );
  }
}