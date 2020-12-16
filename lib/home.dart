import 'package:flutter/material.dart';

MyApp() {
  var mybody = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    color: Colors.black,
    child: Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 70.0, right: 30.0),
          alignment: Alignment.center,
          width: 100,
          height: 100,
          color: Colors.yellow,
          child: RaisedButton(
              // padding: const EdgeInsets.all(5.0),
              color: Colors.white,
              child: Text('Button'),
              onPressed: () {
                print("hi");
              }),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue[100],
          margin: EdgeInsets.only(left: 10.0, right: 30.0),
          child: RaisedButton(
              padding: const EdgeInsets.all(5.0),
              //color: Colors.red,
              child: Text('Button'),
              onPressed: () {
                print("hi");
              }),
        )
      ],
    ),
  );

  return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('practice app'),
        ),
        body: mybody,
      ));
}
