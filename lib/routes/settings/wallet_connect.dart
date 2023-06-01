import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class WalletConnect extends StatefulWidget {
  const WalletConnect({super.key});

  @override
  State<WalletConnect> createState() => _WalletConnectState();
}

class _WalletConnectState extends State<WalletConnect> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        appBar: AppBar(
        centerTitle: true,
        title: Text("WalletConnect"),
        backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Icon(CupertinoIcons.info_circle)
          ],
          // title: ,
        ),
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            // Text("Connect your wallet with WalletConnect to make transactions", style: TextStyle(color: Colors.white,fontSize: 17, letterSpacing: 1),textAlign: TextAlign.center,),
            Padding(
            padding: const EdgeInsets.only(left:25.0),
            child: Text("Connect your wallet with WalletConnect to make transactions", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 18, letterSpacing: 1),),
          ),
            SizedBox(height: 20,),
             SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    "New Connection",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.white),
                      elevation:
                          MaterialStateProperty.resolveWith((states) => 0)),
                ),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.05,
              ),
          ],
        )
      ),
    );
  }
}