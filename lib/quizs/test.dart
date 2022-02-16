import 'package:flutter/material.dart';

class HomeScreen1 extends StatefulWidget {
  HomeScreen1({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('tvrvc'),
      ),
      body: Column(
        children: [
          InkWell(
             onTap: () {}, // Handle your callback
              child: Ink(height: 100, width: 100, color: Colors.blue),
          )
        ],
        // return Card(
        //   child: InkWell(
        //     child: Row(
        //       // Row content
        //     ),
        //     onTap: () => {
        //       print("Card tapped.");
        //     },
        //   ),
        //   elevation: 2,
        // );
        

      ),
    );
  }

}
