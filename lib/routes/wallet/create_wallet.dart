import 'package:crypto_wallet_app/routes/home/home.dart';
import 'package:crypto_wallet_app/routes/wallet/main_wallet.dart';
import 'package:flutter/material.dart';

class CreateWallet extends StatefulWidget {
  const CreateWallet({super.key});

  @override
  State<CreateWallet> createState() => _CreateWalletState();
}

class _CreateWalletState extends State<CreateWallet> {
  final _controller = PageController(initialPage: 0);
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
          // body: Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   // mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Image.asset(
          //       'assets/decen_apps.png',
          //       width: MediaQuery.of(context).size.width * 1.0,
          //       height: MediaQuery.of(context).size.height * 0.5,
          //     ),
          //     Text(
          //       "Explore decentralized\n apps",
          //       style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 35,
          //           fontWeight: FontWeight.w300,
          //           letterSpacing: 1),
          //       textAlign: TextAlign.center,
          //     ),
          //     SizedBox(
          //       height: MediaQuery.of(context).size.height * 0.2,
          //     ),
          //     SizedBox(
          //       child: ElevatedButton(
          //         onPressed: () {
          //           Navigator.push(context,
          //               MaterialPageRoute(builder: (context) => TradeAssets()));
          //         },
          //         child: Text(
          //           "Create a new Wallet",
          //           style: TextStyle(color: Colors.black),
          //         ),
          //         style: ButtonStyle(
          //             backgroundColor: MaterialStateColor.resolveWith(
          //                 (states) => Colors.white),
          //             elevation:
          //                 MaterialStateProperty.resolveWith((states) => 0)),
          //       ),
          //       width: MediaQuery.of(context).size.width * 0.8,
          //       height: MediaQuery.of(context).size.height * 0.05,
          //     )
          //   ],
          // ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: PageView(
                  controller: _controller,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: [
                    pageviewContent(
                        'assets/private.png',
                        context,
                        "Private and Secure",
                        "Private keys never leave your device"),
                    pageviewContent(
                        'assets/all_assets.png',
                        context,
                        "All assets in one Place",
                        "View and store assets seamlessly"),
                    pageviewContent('assets/trade_assets.png', context,
                        "Trade assets", "Trade your assets anonymously"),
                    pageviewContent('assets/decen_apps.png', context,
                        "Explore decentralized apps", "Earn, Explore, utilize, spend, trade and more"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(4, (int index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: 10.0,
                    width: (index == _currentPage) ? 10.0 : 10.0,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: (index == _currentPage)
                          ? Colors.white
                          : Colors.grey.withOpacity(0.5),
                    ),
                  );
                }),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: const Text(
                    "Create a new Wallet",
                    style: TextStyle(color: Colors.black),
                  ),
                  
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),        
                      elevation:0),
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "I already hava a wallet",
                style: TextStyle(color: Colors.white),
              )
            ],
          )
          // body: Column(
          //   children: [
          //     SizedBox(
          //       height: MediaQuery.of(context).size.width,
          //       child: PageView(
          //       children: <Widget>[
          //         Container(
          //           color: Colors.pink,
          //         ),
          //         Container(
          //           color: Colors.cyan,
          //         ),
          //         Container(
          //           color: Colors.deepPurple,
          //         ),
          //       ],
          //     ),
          //     ),
          //   ],
          // ),
          ),
    );
  }
}

Widget pageviewContent(String asset, con, text, subtext) {
  return Column(children: [
    const SizedBox(
      height: 50,
    ),
    Image.asset(asset, width: MediaQuery.of(con).size.width * 0.5),
    const SizedBox(
      height: 70,
    ),
    Text(
      text,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w400,
          letterSpacing: 1),
      textAlign: TextAlign.center,
    ),
    const SizedBox(
      height: 10,
    ),
    Text(
      subtext,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w300,
          letterSpacing: 1),
      textAlign: TextAlign.center,
    ),
  ]);
}
