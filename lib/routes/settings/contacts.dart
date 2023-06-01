import 'package:flutter/material.dart';


class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("Contacts", style: TextStyle(color: Colors.white),),
          actions: [
            Icon(Icons.add)
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          // SizedBox(height: MediaQuery.of(context).size.height * 0.1/,),
          Center(
            child: Image.asset("assets/contact.png",
             width: MediaQuery.of(context).size.width * 0.35,
            ),
          ),
          SizedBox(height: 20,),
          Text("Contacts will appear here", style: TextStyle(color: Colors.white),)
        ],),
      ),
    );
  }
}