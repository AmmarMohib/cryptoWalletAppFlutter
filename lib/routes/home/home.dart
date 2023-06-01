import 'package:crypto_wallet_app/browser/browser.dart';
import 'package:crypto_wallet_app/routes/Discover/discover.dart';
import 'package:crypto_wallet_app/routes/settings/Wallets.dart';
import 'package:crypto_wallet_app/routes/settings/browser.dart';
import 'package:crypto_wallet_app/routes/settings/settings.dart';
import 'package:crypto_wallet_app/routes/wallet/main_wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    MainWallet(),
    Discover(),
    BrowserScreen(),
    SettingsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(19, 210, 107, 1.0),
         fixedColor: Colors.white, 
         unselectedLabelStyle: TextStyle(fontSize: 11),   
         selectedLabelStyle: TextStyle(fontSize: 11),   
         unselectedItemColor: Colors.white,
         selectedIconTheme: IconThemeData(size: 22.5),
         unselectedIconTheme: IconThemeData(`size: 22.5),
          type: BottomNavigationBarType.fixed,
// fixedColor: Color.fromRGBO(19, 210, 107, 1.0),
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.security),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.compass),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: 'Browser',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
