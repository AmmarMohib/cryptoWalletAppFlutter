import 'package:crypto_wallet_app/routes/wallet/create_wallet.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        appBar: AppBar(
          title: Text("Log In"),
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              CircleAvatar(
                backgroundImage: AssetImage("assets/avatar.png"),
                radius: 50,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10),
                        prefix: Text(
                          "Name",
                          style: TextStyle(color: Colors.black),
                        ))),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                color: Colors.white,
                child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10),
                        prefix: Text(
                          "Password",
                          style: TextStyle(color: Colors.black),
                        ))),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SizedBox(height: 30,),
              Text("Forget Password?", style: TextStyle(color: Colors.white),),
              SizedBox(height: 100,),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CreateWallet()));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.black),
                  ),
                  
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),        
                      elevation:0),
                ),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.06,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
