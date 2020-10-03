import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override // overrules the build function inherited from StatelessWidget class
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          // Image.asset('assets/space.jpg'),
          Expanded(child: Text('Hello')),
          Center(
            child: Icon(
              Icons.airport_shuttle_outlined,
              color: Colors.amber,
              size: 100,
            ),
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: RaisedButton.icon(
              icon: Icon(
                Icons.ac_unit,
              ),
              onPressed: () {
                print('clicked');
              },
              label: Text('hi'),
              // label: Text('mail me'),
            ),
          ),
        ],
      ), // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('+'),
        backgroundColor: Colors.red[400],
      ),
    );
  }
}
