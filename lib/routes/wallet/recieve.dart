import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Recieve extends StatefulWidget {
  const Recieve({super.key});

  @override
  State<Recieve> createState() => _RecieveState();
}

class _RecieveState extends State<Recieve> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        appBar: AppBar(
          automaticallyImplyLeading: false,

          title: Text("Recieve BTC"),
          backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          // title: ,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  SizedBox(height: 30,),

            Center(child: SizedBox(child: Card(child: Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset("assets/qr_code.png", width: 150,),
                  Text("fdsfdsfsavcgbrf4erfeewfewfe?/dsawsf\/?dsadsfsa", style: TextStyle(fontSize: 11,),textAlign: TextAlign.center,)
                ],
              ),
            ))), width: 170,)),
            Padding(padding: EdgeInsets.only(top: 30), child: Text("Send Only Bitcoin (BTC) to this adress", style: TextStyle(color:Colors.white, fontSize: 12),),),
            Padding(padding: EdgeInsets.only(top: 5), child: Text("Sending any other coins my result in permenant loss", style: TextStyle(color:Colors.white, fontSize: 12),),),
            SizedBox(height: 40,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => Recieve()));
                  },
                  child: Icon(
                    Icons.copy,
                    color: Colors.white,
                    size: 17,
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(15),
                      backgroundColor: Color.fromRGBO(66, 82, 103, 1.0), // <-- Button color
                      elevation: 0
                      // foregroundColor: Colors.red, // <-- Splash color
                      ),
                ),
                SizedBox(height: 10),
                Text(
                  "Copy",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => Recieve()));
                  },
                  child: Icon(
                    Icons.price_change_outlined,
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
                  "Set Amount",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => Recieve()));
                  },
                  child: Icon(
                    Icons.share,
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
                  "Share",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
            ],),
            SizedBox(height: 25,),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.79,
              height: 70,
              child: Card(child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context, MaterialPageRoute(builder: (context) => Recieve()));
                    },
                    child: Icon(
                      Icons.roundabout_left,
                      color: Colors.white,
                      size: 17,
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(15),
                        backgroundColor: Color.fromRGBO(51, 117, 187, 1.0), // <-- Button color
                        elevation: 0
                        // foregroundColor: Colors.red, // <-- Splash color
                        ),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Deposit from Card"),
                  Text("By direct transfer from you \n account",style: TextStyle(fontSize: 10),)
                    ],
                  ),
                  SizedBox(width: 40,),
                  Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.black,
                    size: 17,
                  ),
                ],
              ),),
            )
          ],
        ),
      ),
    );
  }
}