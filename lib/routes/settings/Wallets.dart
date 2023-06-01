import 'package:crypto_wallet_app/routes/wallet/create_wallet.dart';
import 'package:crypto_wallet_app/routes/wallet/main_wallet.dart';
import 'package:flutter/material.dart';

class WalletsScreen extends StatefulWidget {
  const WalletsScreen({super.key});

  @override
  State<WalletsScreen> createState() => _WalletsScreenState();
}

class _WalletsScreenState extends State<WalletsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Wallets",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => CreateWallet()));
                },
                icon: Icon(Icons.add))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left:60.0),
              child: Text("Multi-Coin Wallets", style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 20,),
             InkWell(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => WalletsScreen()));
              },
              child: const ListTile(
                title: Text(
                  "Main Wallet 1",
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                ),
                leading: Icon(Icons.security,
                    color: Colors.white, size: 35),
                subtitle: Text(
                  "multi-Coin Wallet",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                trailing: Icon(Icons.more_vert, color: Colors.white,),
              ),
            ),
            InkWell(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => WalletsScreen()));
              },
              child: const ListTile(
                title: Text(
                  "Main Wallet 2",
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                ),
                leading: Icon(Icons.security,
                    color: Colors.white, size: 35),
                subtitle: Text(
                  "multi-Coin Wallet",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                trailing: Icon(Icons.more_vert, color: Colors.white,),
              )),
            InkWell(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => WalletsScreen()));
              },
              child: const ListTile(
                title: Text(
                  "Main Wallet 3",
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                ),
                leading: Icon(Icons.security,
                    color: Colors.white, size: 35),
                subtitle: Text(
                  "multi-Coin Wallet",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                trailing: Icon(Icons.more_vert, color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
