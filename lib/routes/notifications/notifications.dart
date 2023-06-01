import 'package:crypto_wallet_app/routes/settings/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(19, 210, 107, 1.0),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(19, 210, 107, 1.0),
          toolbarHeight: 100,
          elevation: 0,
          centerTitle: true,
          title: Transform.translate(
              offset: Offset(0, 0),
              child: Text(
                "Notifications",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              )),
          leading: Transform.translate(
            offset: Offset(0, 0),
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: 25),
              onPressed: () {
                Navigator.pop(context);
                // Do something when the left icon is pressed
              },
            ),
          ),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/notifications.png',
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              // SizedBox(height: 20,),
              Text("Notifications will appear here", style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}
