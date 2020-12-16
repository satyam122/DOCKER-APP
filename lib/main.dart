import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

void main() {
  runApp(x());
}

web(cmd) async {
  var url = "http://192.168.1.4/cgi-bin/web.py?x=${cmd}";
  var response = await http.get(url);
  print(response.body);
}

class x extends StatelessWidget {
  String cmd;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("RUN DOCKER RUN"),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.blue, Colors.yellow])),
          ),
        ),
        drawer: Drawer(),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(30),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.pink, Colors.yellow]),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
            ),
            child: Column(
              children: <Widget>[
                TextField(
                  onChanged: (value) {
                    cmd = value;
                  },
                  autocorrect: false,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      hintText: "Enter Docker command",
                      prefixIcon: Icon(Icons.all_out)),
                ),
                RaisedButton(
                  onPressed: () {
                    web(cmd);
                  },
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        fontFamily: 'CM Sans Serif',
                        height: 1.5,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
