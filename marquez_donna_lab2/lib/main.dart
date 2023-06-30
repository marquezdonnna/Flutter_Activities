import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Album'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/w.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.share),
                    Container(
                      margin: EdgeInsets.only(top: 8.0),
                      child: Text('Share'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.edit),
                    Container(
                      margin: EdgeInsets.only(top: 8.0),
                      child: Text('Edit'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.delete),
                    Container(
                      margin: EdgeInsets.only(top: 8.0),
                      child: Text('Delete'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
