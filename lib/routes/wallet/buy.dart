import 'package:crypto_wallet_app/custom/keyboard.dart';
import 'package:flutter/material.dart';

class Buy extends StatefulWidget {
  const Buy({super.key});

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  var text = "";
  TextEditingController _controller = TextEditingController();
  bool _readOnly = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
          appBar: AppBar(
            title: Text("Buy BNB"),
            elevation: 0,
            backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_outlined),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, right: 5),
                child: Text("USD"),
              )
            ],
          ),
          body: Stack(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // text != "" ? Text(text) : Text("\$ 0.00"),
              Padding(
                padding: const EdgeInsets.only(bottom:100.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.2,
                    // color: Colors.amber,
                    // alignment: Alignment.topRight,
                    child: TextField(
                      controller: _controller,
                      textAlign: TextAlign.center,
                      // decoration: ,
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white
                        // textBaseline: TextBaseline.ideographic
                        ),
                      autofocus: true,
                      showCursor: true,
                      readOnly: _readOnly,
                      cursorColor: const Color.fromRGBO(19, 210, 107, 1.0),
                      decoration: InputDecoration(
                        // prefixStyle: TextStyle(),
                        // prefix: Text("\$",),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),

              // IconButton(
              //   // icon: Icon(Icons.keyboard),
              //   onPressed: () {
              //     setState(() {
              //       _readOnly = !_readOnly;
              //     });
              // },
              // ),
              Padding(
                padding: const EdgeInsets.only(bottom:100.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomKeyboard(onTextInput: (s) {
                    // String txt = _controller.text;
                    if (_controller.text != "") {
                      // print(text + );
                      setState(() {
                        _controller.text = _controller.text + s;
                      });
                    } else {
                      _controller.text = "\$" 
                      + " " + s;
                    }
                    print(s);
                    // setState(() {
                    // _controller.text = s;
                    // });
                  }, onBackspace: () {
                    if (_controller.text != "") {
                      setState(() {
                        _controller.text =  _controller.text
                            .substring(0, _controller.text.length - 1);
                      });
                    }
                  }),
                ),
              ),
              // Align(child: ElevatedButton(onPressed: () {}, child: Text("data")), alignment: Alignment.bottomCenter,)
              Padding(
                padding: const EdgeInsets.only(bottom:30.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Text(
                          "Next",
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
                   
                ),
              ),
            ],
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
