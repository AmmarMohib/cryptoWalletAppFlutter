import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PushNotifications extends StatefulWidget {
  const PushNotifications({super.key});

  @override
  State<PushNotifications> createState() => _PushNotificationsState();
}

class _PushNotificationsState extends State<PushNotifications> {
  bool pushNot = false;
  bool senrec = false;
  bool proann = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        appBar: AppBar(
          automaticallyImplyLeading: false,

          title: Text("Push Notifications"),
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
                "Push Notifications",
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
                value: pushNot,
                // changes the state of the switch
                onChanged: (value) => setState(() => pushNot = value),
              ),
            ),
            pushNot == true ? Column(children: [
               ListTile(
              title: const Text(
                "Send and Recieve",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              subtitle: Text("You will be notified for sent and recieved transactions",style: TextStyle(color: Colors.white,)),
              trailing: CupertinoSwitch(
                // overrides the default green color of the track
                activeColor: const Color.fromRGBO(147, 202, 255, 1.0),
                // color of the round icon, which moves from right to left
                thumbColor: const Color.fromRGBO(0, 51, 83, 1.0),
                // when the switch is off
                trackColor: const Color.fromRGBO(147, 202, 255, 1.0),
                // boolean variable value
                value: senrec,
                // changes the state of the switch
                onChanged: (value) => setState(() => senrec = value),
              ),
            ),
             ListTile(
              title: const Text(
                "Product Announcements",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              subtitle: Text("Be the first to know about new features",style: TextStyle(color: Colors.white,)),
              trailing: CupertinoSwitch(
                // overrides the default green color of the track
                activeColor: const Color.fromRGBO(147, 202, 255, 1.0),
                // color of the round icon, which moves from right to left
                thumbColor: const Color.fromRGBO(0, 51, 83, 1.0),
                // when the switch is off
                trackColor: const Color.fromRGBO(147, 202, 255, 1.0),
                // boolean variable value
                value: proann,
                // changes the state of the switch
                onChanged: (value) => setState(() => proann = value),
              ),
            ),
            ],) : Container()
          ],
        ),
      ),
    );
  }
}
