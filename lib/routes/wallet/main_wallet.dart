import 'package:crypto_wallet_app/routes/notifications/notifications.dart';
import 'package:crypto_wallet_app/routes/wallet/buy.dart';
import 'package:crypto_wallet_app/routes/wallet/collectibles.dart';
import 'package:crypto_wallet_app/routes/wallet/recieve.dart';
import 'package:crypto_wallet_app/routes/wallet/swap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainWallet extends StatefulWidget {
  const MainWallet({Key? key});

  @override
  State<MainWallet> createState() => _MainWalletState();
}

class _MainWalletState extends State<MainWallet>
    with SingleTickerProviderStateMixin {
  bool _showBottom = true;
  late ScrollController _scrollController;
  final double _appBarHeight = 200.0;
  final String _title = "My App Title";
  var isPinned = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool _showBottomText = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Color.fromRGBO(19, 210, 107, 1.0),
          body: SafeArea(
            child: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      pinned: true,
                      expandedHeight: 100,
                      backgroundColor: Color.fromRGBO(19, 210, 107, 1.0),
                      elevation: 0,
                      leading: Transform.translate(
                        offset: Offset(0, 0),
                        child: IconButton(
                          icon: Icon(Icons.notifications_outlined, size: 25),
                          onPressed: () {
                            // Do something when the left icon is pressed
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        NotificationScreen()));
                          },
                        ),
                      ),
                      actions: [
                        Transform.translate(
                          offset: Offset(-20, 0),
                          child: Image(
                            image: AssetImage("assets/filter_icon.png"),
                            color: Colors.white,
                            width: 25,
                          ),
                        ),
                      ],
                      flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        // titlePadding: EdgeInsets.all(40),
                        title: Transform.translate(
                          offset: Offset(0, 10),
                          child: Text(
                            "\$ 0.00",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SliverPersistentHeader(
                      pinned: false,
                      floating: false,
                      delegate: _BottomHeader(),
                    ),
                    SliverAppBar(
                      pinned: true,
                      toolbarHeight: 40,
                      expandedHeight: 20,
                      backgroundColor: Color.fromRGBO(19, 210, 107, 1.0),
                      elevation: 0,
                      bottom: TabBar(
                        // controller: _tabController,
                        indicatorColor: Colors.white,
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: [
                          Tab(
                            text: 'Tokens',
                          ),
                          Tab(
                            text: "NFTs",
                          ),
                        ],
                      ),
                    ),
                  ];
                },
                body: SafeArea(
                    child: TabBarView(
                  children: [
                    CustomScrollView(
                      slivers: [
                        SliverList(
                          delegate: SliverChildListDelegate([
                            _buildListItem(
                              'BNB',
                              'assets/bnb.png',
                              context,
                              Color.fromRGBO(216, 193, 63, 1.0),
                            ),
                            SizedBox(height: 5),
                            _buildListItem(
                              'BTC',
                              'assets/bitcoin.png',
                              context,
                              Color.fromRGBO(248, 161, 55, 1.0),
                            ),
                            SizedBox(height: 5),
                            _buildListItem(
                              'ETC',
                              'assets/etharum.png',
                              context,
                              Colors.white,
                            ),
                            SizedBox(height: 5),
                            _buildListItem(
                              'BNB',
                              'assets/bitcoin.png',
                              context,
                              Color.fromRGBO(216, 193, 63, 1.0),
                            ),
                            SizedBox(height: 5),
                            _buildListItem(
                              'Add Tokens',
                              '',
                              context,
                              Colors.white,
                            ),
                          ]),
                        ),
                      ],
                    ),
                    Collectibles()
                  ],
                ))),
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

Widget _buildListItem(String title, String imagePath, con, col) {
  return Card(
    color: Color.fromRGBO(19, 210, 107, 1.0),
    elevation: 1,
    child: ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      leading: imagePath != ""
          ? CircleAvatar(
              child: Image.asset(
                imagePath,
                width: 20,
              ),
              radius: 15,
              backgroundColor: Colors.white,
            )
          : Icon(Icons.add),
      trailing: Text(
        "0",
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

class _BottomHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Column(
      children: [
        SizedBox(height: 20),
        // SizedBox(height: 40,),
        // SizedBox(height: 50,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_upward,
                    color: Colors.black,
                    size: 17,
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(15),
                      backgroundColor: Colors.white, // <-- Button color
                      //  foregroundColor: Colors.red, // <-- Splash color
                      elevation: 0),
                ),
                SizedBox(height: 10),
                Text(
                  "Send",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Recieve()));
                  },
                  child: Icon(
                    Icons.arrow_downward,
                    color: Colors.black,
                    size: 17,
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(15),
                      backgroundColor: Colors.white, // <-- Button color
                      elevation: 0
                      // foregroundColor: Colors.red, // <-- Splash color
                      ),
                ),
                SizedBox(height: 10),
                Text(
                  "Recieve",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Buy()));
                  },
                  child: Icon(
                    Icons.save_outlined,
                    color: Colors.black,
                    size: 17,
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(15),
                      backgroundColor: Colors.white, // <-- Button color
                      elevation: 0
                      // foregroundColor: Colors.red, // <-- Splash color
                      ),
                ),
                SizedBox(height: 10),
                Text(
                  "Buy",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Swap()));
                  },
                  child: Icon(CupertinoIcons.arrow_right_arrow_left,
                      size: 17, color: Colors.black),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(15),
                      backgroundColor: Colors.white, // <-- Button color
                      elevation: 0
                      // foregroundColor: Colors.red, // <-- Splash color
                      ),
                ),
                SizedBox(height: 10),
                Text(
                  "Swap",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }

  @override
  double get maxExtent => 95.0;
// 90
  @override
  double get minExtent => 95.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
