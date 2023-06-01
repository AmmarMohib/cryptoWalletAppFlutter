import 'package:crypto_wallet_app/routes/wallet/main_wallet.dart';
import 'package:flutter/material.dart';

class LegalScreen extends StatefulWidget {
  const LegalScreen({super.key});

  @override
  State<LegalScreen> createState() => _LegalScreenState();
}

class _LegalScreenState extends State<LegalScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(19, 210, 107, 1.0),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Legal",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1),
                textAlign: TextAlign.center,
              ),
              // Image.asset(
              //   'assets/decen_apps.png',
              //   width: MediaQuery.of(context).size.width * 1.0,
              //   height: MediaQuery.of(context).size.height * 0.5,
              // ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => TradeAssets()));
                  },
                  child: Row(
                    children: [
                      Text(
                        "Privacy Policy",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.405,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromRGBO(149, 162, 181, 1.0),
                        size: 15,
                      )
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.white),
                      elevation:
                          MaterialStateProperty.resolveWith((states) => 0),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.elliptical(10, 10),
                              topRight: Radius.elliptical(10,
                                  10)), // Set the border radius to make the corners rounded
                        ),
                      )),
                ),
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.2,
              // ),
              SizedBox(height: 1,),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => TradeAssets()));
                  },
                  child: Row(
                    children: [
                      Text(
                        // textAlign: TextAlign.left, // Align the text on the left side

                        "Terms of Services",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromRGBO(149, 162, 181, 1.0),
                        size: 15,
                      )
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.white),
                      elevation:
                          MaterialStateProperty.resolveWith((states) => 0),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.elliptical(10, 10),
                              bottomRight: Radius.elliptical(10,
                                  10)), // Set the border radius to make the corners rounded
                        ),
                      )),
                ),
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainWallet()));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.white),
                      elevation:
                          MaterialStateProperty.resolveWith((states) => 0)),
                ),
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.05,
              )
            ],
          ),
        ),
      ),
    );
  }
}
