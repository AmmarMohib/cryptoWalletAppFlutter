import 'package:crypto_wallet_app/routes/settings/browser.dart';
import 'package:crypto_wallet_app/routes/settings/node_settings.dart';
import 'package:flutter/material.dart';

class Preferences extends StatefulWidget {
  const Preferences({super.key});

  @override
  State<Preferences> createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
      appBar: AppBar(
        title: Text("Preferences"),
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
            title: Text(
              "Currency",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              "USD",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              "App Language",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              "English",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Browser()));
            },
            child: ListTile(
              title: Text(
                "DApp Browser",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              // subtitle: Text("USD", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color: Colors.white),),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NodeSettings()));
            },
            child: ListTile(
              title: Text(
                "Node Settings",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              // subtitle: Text("USD", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color: Colors.white),),
            ),
          ),
        ],
      ),
    ));
  }
}
