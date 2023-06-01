import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Browser extends StatefulWidget {
  const Browser({super.key});

  @override
  State<Browser> createState() => _BrowserState();
}

class _BrowserState extends State<Browser> {
  bool enable = false;
  bool connect = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        appBar: AppBar(
          title: Text("Browser"),
          backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          // title: ,
        ),
        body: Column(
          children: [
            ListTile(
              title: const Text(
                "Enable",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              trailing: CupertinoSwitch(
                // overrides the default green color of the track
                activeColor: const Color.fromRGBO(147, 202, 255, 1.0),
                // color of the round icon, which moves from right to left
                thumbColor: const Color.fromRGBO(0, 51, 83, 1.0),
                // when the switch is off
                trackColor: const Color.fromRGBO(147, 202, 255, 1.0),
                // boolean variable value
                value: enable,
                // changes the state of the switch
                onChanged: (value) => setState(() => enable = value),
              ),
            ),
            ListTile(
              title: const Text(
                "Connect DApp automatically",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              trailing: CupertinoSwitch(
                // overrides the default green color of the track
                activeColor: const Color.fromRGBO(147, 202, 255, 1.0),
                // color of the round icon, which moves from right to left
                thumbColor: const Color.fromRGBO(0, 51, 83, 1.0),
                // when the switch is off
                trackColor: const Color.fromRGBO(147, 202, 255, 1.0),
                // boolean variable value
                value: connect,
                // changes the state of the switch
                onChanged: (value) => setState(() => connect = value),
              ),
            ),
            ListTile(
              title: const Text(
                "Clear Browser Cache",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
