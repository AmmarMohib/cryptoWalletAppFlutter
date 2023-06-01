import 'package:flutter/material.dart';

class NodeSettings extends StatefulWidget {
  const NodeSettings({super.key});

  @override
  State<NodeSettings> createState() => _NodeSettingsState();
}

class _NodeSettingsState extends State<NodeSettings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        appBar: AppBar(
        title: Text("Node Settings"),
        backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Icon(Icons.search)
        ],
        // title: ,
      ),
      ),
    );
  }
}
