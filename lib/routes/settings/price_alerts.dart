import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriceAlerts extends StatefulWidget {
  const PriceAlerts({super.key});

  @override
  State<PriceAlerts> createState() => _PriceAlertsState();
}

class _PriceAlertsState extends State<PriceAlerts> {
  bool forIos = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Price Alerts",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(children: [
          ListTile(
            title: const Text(
              "Price Alerts",
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
              value: forIos,
              // changes the state of the switch
              onChanged: (value) => setState(() => forIos = value),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Text("Get alerts for significiant price changes of your favourite cryptocurrencies", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 18, letterSpacing: 1),),
          )
        ]),
      ),
    );
  }
}
