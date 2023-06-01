import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
          toolbarHeight: 100,
          elevation: 0,
          centerTitle: false,
          title: Transform.translate(
              offset: const Offset(10, 0),
              child: const Text(
                "Discover",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
              )),
        ),
        body: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Tax Report Tools",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              SizedBox(
                height: 17.5,
              ),
              _buildTaxRep("assets/coinpanda.png", "Coinpanda",
                  "-20% off on tax report"),
              SizedBox(
                height: 17.5,
              ),
              _buildTaxRep(
                  "assets/koinly.png", "Koinly", "-25% off on tax report"),
              SizedBox(
                height: 17.5,
              ),
              _buildTaxRep("assets/cointracker.png", "CoinTracker",
                  "-20% off on tax report"),
              SizedBox(
                height: 17,
              ),
              Row(
                // crossAxisAlignment: cr,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Trending News",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_sharp,
                        color: Colors.white,
                      ))
                ],
              ),
              SizedBox(
                height: 17,
              ),
              _buildTrend(
                  'assets/trend1.png',
                  "Nigerian Crypto Startup Lazerpay to ShutDown Operations",
                  context,
                  "April",
                  "Blockchain News"),
                    SizedBox(
                height: 17.5,
              ),
              _buildTrend(
                  'assets/trend2.png',
                  "Paxos Identifies Key Opportunities During Crypto Winter",
                  context,
                  "Winter",
                  "Blockchain News"),
                    SizedBox(
                height: 17.5,
              ),
              _buildTrend(
                  'assets/trend3.png',
                  "Ripple Launches Liquidity Hub to Bridge Crypto and Fiat",
                  context,
                  "",
                  "Blockchain News")
            ]),
      ),
    );
  }
}

Widget _buildTaxRep(String assetimg, String title, tax) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    // crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      // Container(child: Image.asset("assets/coinpanda.png", width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,), decoration: BoxDecoration(
      // borderRadius: BorderRadius.all(Radius.circular(50))
      // ),width: 100, height: 100,)
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: SizedBox(
          width: 90,
          height: 70,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // Image border
            child: SizedBox.fromSize(
              size: Size.fromRadius(48), // Image radius
              child: Image.asset(assetimg,
                  // 'assets/coinpanda.png',
                  fit: BoxFit.cover),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,

              // "Coinpanda",
              style: TextStyle(color: Colors.white,fontSize: 12),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              tax,
              // "-20% off on tax report",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              width: 100,
              height: 17,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Color.fromRGBO(151, 151, 154, 1),
              ),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "TWT Exta Discount",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
          ],
        ),
      ),
      // SizedBox(height: 100,)
    ],
  );
}

Widget _buildTrend(String assetimg, String title, con, tag, newsname) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    // crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      // Container(child: Image.asset("assets/coinpanda.png", width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,), decoration: BoxDecoration(
      // borderRadius: BorderRadius.all(Radius.circular(50))
      // ),width: 100, height: 100,)
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: SizedBox(
          width: 90,
          height: 70,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // Image border
            child: SizedBox.fromSize(
              size: Size.fromRadius(48), // Image radius
              child: Image.asset(assetimg,
                  // "assets/trend1.png",
                  fit: BoxFit.cover),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(con).size.width * 0.625,
              child: Text(
                title,
                // "Nigerian Crypto Startup Lazerpay to ShutDown Operations",
                // "Coinpanda",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.5,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Text(
                  newsname,
                  // "BlockChain News",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                SizedBox(
                  width: 7,
                ),
                tag != ""
                    ? Container(
                        // width: ,
                        height: 17,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color.fromRGBO(151, 151, 154, 1),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 3.0, right: 3),
                            child: Text(
                              tag,
                              textAlign: TextAlign.center,
                              // "April",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
      // SizedBox(height: 100,)
    ],
  );
}
