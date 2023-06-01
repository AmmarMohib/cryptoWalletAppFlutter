import 'package:crypto_wallet_app/routes/notifications/notifications.dart';
import 'package:crypto_wallet_app/routes/wallet/main_wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Collectibles extends StatefulWidget {
  const Collectibles({super.key});

  @override
  State<Collectibles> createState() => _CollectiblesState();
}

class _CollectiblesState extends State<Collectibles> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(19, 210, 107, 1.0),
           body: SizedBox(
            width: MediaQuery.of(context).size.width,
             child: Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     // mainAxisAlignment: MainAxisAlignment.center,
                     children: [
              Image.asset(
                'assets/collectibles.png',
                width: MediaQuery.of(context).size.width * 0.26,
                height: MediaQuery.of(context).size.height * 0.26,
              ),
              Text(
                "Collectibles will appear here",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainWallet()));
                  },
                  child: Text(
                    "Recieve",
                    style: TextStyle(color: Colors.white),
                  ),
                  
                  style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))), // Set the border radius to make the corners rounded
                          ),
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Color.fromRGBO(57, 73, 83, 1.0)),
                          
                      elevation:
                          MaterialStateProperty.resolveWith((states) => 0)),
                ),
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.05,
              )
                     ],
                   ),
           ),
        ),
        debugShowCheckedModeBanner: false,
    );
  }
}