import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:indexed/indexed.dart';

class Swap extends StatefulWidget {
  const Swap({super.key});

  @override
  State<Swap> createState() => _SwapState();
}

class _SwapState extends State<Swap> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
      appBar: AppBar(
        title: Text("Swap"),
        elevation: 0,
        backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 221,
        width: MediaQuery.of(context).size.width * 0.93,
              // width: double.infinity,
              child: Indexer(
                // index: 1,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left:250.0),
                      child: SizedBox(
                        height: 35,
                        width: 50,
                        child: Indexed(
                          index: 1,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              CupertinoIcons.arrow_up_arrow_down,
                              color: Colors.black,
                              size: 14,
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                // padding: EdgeInsets.all(15),
                                backgroundColor: Colors.white, // <-- Button color
                                //  foregroundColor: Colors.red, // <-- Splash color
                                elevation: 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Indexed(
                    index: 0,
                    child: Container(
                      // color: Colors.red,
                      height: 221,
                      child: Column(children: [
                        Container(
                          height: 110,
                          child: Card(
                            color: Color.fromRGBO(39, 45, 50, 1.0),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2)),
                            margin:
                                EdgeInsets.only(top: 20, left: 4, right: 4, bottom: 0),
                            shadowColor: Colors.transparent,
                            child: Row(
                              // crossAxisAlignment: cros,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0, top: 10),
                                        child: Text(
                                          "You Pay",
                                          style: TextStyle(
                                              color: Color.fromRGBO(198, 206, 209, 1)),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0, top: 5),
                                        child: Text("0",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 23)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 5, bottom: 10),
                                        child: Text("Balance 0 BNB",
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(198, 206, 209, 1))),
                                      ),
                                    ],
                                  ),
                                ),
                                // Image.asset('assets/bnb.png',)
                                Row(
                                  children: [
                                    CircleAvatar(
                                      child: Image.asset(
                                        'assets/bnb.png',
                                        width: 20,
                                      ),
                                      radius: 15,
                                      backgroundColor: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "BNB",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.1,
                        ),
                        Container(
                          height: 90,
                          child: Card(
                            color: Color.fromRGBO(39, 45, 50, 1.0),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2)),
                            margin: EdgeInsets.only(
                                top: 0.25, left: 4, right: 4, bottom: 0),
                            shadowColor: Colors.transparent,
                            child: Row(
                              // crossAxisAlignment: cros,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0, top: 10),
                                        child: Text(
                                          "You Get",
                                          style: TextStyle(
                                              color: Color.fromRGBO(198, 206, 209, 1)),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0, top: 5),
                                        child: Text("0",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 23)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 5, bottom: 10),
                                        child: Text("Balance 0 ETH",
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(198, 206, 209, 1))),
                                      ),
                                    ],
                                  ),
                                ),
                                // Image.asset('assets/bnb.png',)
                                Row(
                                  children: [
                                    CircleAvatar(
                                      child: Image.asset(
                                        'assets/etharum.png',
                                        width: 20,
                                      ),
                                      radius: 15,
                                      backgroundColor: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "ETH",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60,),
                          SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text(
                      "Preview Snap",
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
          ],
        ),
      ),
    )
        // )
        );
  }
}
