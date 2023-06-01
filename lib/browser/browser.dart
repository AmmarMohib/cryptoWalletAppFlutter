import 'package:flutter/material.dart';

class BrowserScreen extends StatefulWidget {
  const BrowserScreen({super.key});

  @override
  State<BrowserScreen> createState() => _BrowserScreenState();
}

class _BrowserScreenState extends State<BrowserScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
            resizeToAvoidBottomInset: true,

        backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        appBar: AppBar(
          
          // title: Text("Log In"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.05),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.08,
              child: TextField(
              decoration: InputDecoration(
                hintText: 'Search or enter website url',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Color.fromRGBO(238, 241, 250, 1),
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
                      ),
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              Row(
                      // crossAxisAlignment: cr,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "New DApps",
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
                    ListTile(
                      leading: CircleAvatar(backgroundImage: AssetImage("assets/trend3.png")),
                      title: Text("SURFNT", style: TextStyle(color: Colors.white),),
                      subtitle: Text("SURFNT is an Ai powered tool based on BNB chain. Use your Imagination to create images", style: TextStyle(color: Colors.white),maxLines: 2, overflow: TextOverflow.ellipsis,),
                    ),
                    SizedBox(height: 20,),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: AssetImage("assets/trend1.png")),
                      title: Text("LooksRare", style: TextStyle(color: Colors.white),),
                      subtitle: Text("LooksRare is an Ai powered tool based on BNB chain. Use your Imagination to create images", style: TextStyle(color: Colors.white),maxLines: 2, overflow: TextOverflow.ellipsis,),
                    ),
                    SizedBox(height: 20,),
                
                    ListTile(
                      leading: CircleAvatar(backgroundImage: AssetImage("assets/trend2.png")),
                      title: Text("ApolloX", style: TextStyle(color: Colors.white),),
                      subtitle: Text("ApolloX is an Ai powered tool based on BNB chain. Use your Imagination to create images", style: TextStyle(color: Colors.white),maxLines: 2, overflow: TextOverflow.ellipsis,),
                    ),
                     Row(
                      // crossAxisAlignment: cr,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Defi",
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
                    ListTile(
                      leading: CircleAvatar(backgroundImage: AssetImage("assets/trend1.png")),
                      title: Text("Venus", style: TextStyle(color: Colors.white),),
                      subtitle: Text("Venus is an Ai powered tool based on BNB chain. Use your Imagination to create images", style: TextStyle(color: Colors.white),maxLines: 2, overflow: TextOverflow.ellipsis,),
                    ),
                    SizedBox(height: 20,),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: AssetImage("assets/trend3.png")),
                      title: Text("LooksRare", style: TextStyle(color: Colors.white),),
                      subtitle: Text("LooksRare is an Ai powered tool based on BNB chain. Use your Imagination to create images", style: TextStyle(color: Colors.white),maxLines: 2, overflow: TextOverflow.ellipsis,),
                    ),
                    SizedBox(height: 20,),
                
                    ListTile(
                      leading: CircleAvatar(backgroundImage: AssetImage("assets/trend2.png")),
                      title: Text("ApolloX", style: TextStyle(color: Colors.white),),
                      subtitle: Text("ApolloX is an Ai powered tool based on BNB chain. Use your Imagination to create images", style: TextStyle(color: Colors.white),maxLines: 2, overflow: TextOverflow.ellipsis,),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}