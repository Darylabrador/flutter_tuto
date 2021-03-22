import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _mainText = 'This is the first assignment';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange, accentColor: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _mainText = 'this changed';             
                });
              }, 
              child: Text('Change text')
            ),
            Text(_mainText)
          ],
        ),
      ),
    );
  }
}
