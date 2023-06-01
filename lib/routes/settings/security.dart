import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  bool security = false;
  bool passcode = false;
  bool transaction = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Security"),
          backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [Icon(CupertinoIcons.info_circle)],
          // title: ,
        ),
        body: Column(
          children: [
            ListTile(
              title: const Text(
                "Security Scanner",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              subtitle: Text("Keep your assets safer with protactive warnings and risky transactions",style: TextStyle(color: Colors.white,)),
              trailing: CupertinoSwitch(
                // overrides the default green color of the track
                activeColor: const Color.fromRGBO(147, 202, 255, 1.0),
                // color of the round icon, which moves from right to left
                thumbColor: const Color.fromRGBO(0, 51, 83, 1.0),
                // when the switch is off
                trackColor: const Color.fromRGBO(147, 202, 255, 1.0),
                // boolean variable value
                value: security,
                // changes the state of the switch
                onChanged: (value) => setState(() => security = value),
              ),
            ),
            ListTile(
              title: const Text(
                "Passcode",
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
                value: passcode,
                // changes the state of the switch
                onChanged: (value) => setState(() => passcode = value),
              ),
            ),
            passcode == true ?
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: const Text(
                    "Auto-Lock",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  subtitle: const Text(
                    "Immediate",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  title: const Text(
                    "Lock Method",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  subtitle: const Text(
                    "Passcode / Biometric",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Ask authentication for", style: TextStyle(color: Colors.white),),
                ),
                ListTile(
              title: const Text(
                "Transaction Signing",
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
                value: transaction,
                // changes the state of the switch
                onChanged: (value) => setState(() => transaction = value),
              ),
            ),
              ],
            ): Container()
        ],
        ),
      ),
    );
  }
}
