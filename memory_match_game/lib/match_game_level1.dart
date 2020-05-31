import 'package:flutter/material.dart';
import 'package:memory_match_game/items_to_match.dart';

class MatchLevel1 extends StatefulWidget {


  @override
  _MatchLevel1State createState() => _MatchLevel1State();
}

class _MatchLevel1State extends State<MatchLevel1> {

  int _currentLevel = 0;
  bool isAMatch = false;
  bool isSelected = false;
  List<MatchingItems> items = [
    MatchingItems(icons: Icon(Icons.thumb_up), selectedNum: 1 ),
    MatchingItems(icons: Icon(Icons.thumb_down), selectedNum: 2 ),
    MatchingItems(icons: Icon(Icons.map), selectedNum: 3 ),
    MatchingItems(icons: Icon(Icons.thumb_up), selectedNum: 1 ),
    MatchingItems(icons: Icon(Icons.thumb_down), selectedNum: 2 ),
    MatchingItems(icons: Icon(Icons.map), selectedNum: 3 )
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.memory),
            Text(
              'Level 1'
            )
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "$_currentLevel",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0
              ),
            ),
          )
        ],
      ),
      body: GridView.count(
          crossAxisCount: 2,
        children: <Widget>[
          InkResponse(
            onTap: () {
              setState(() {
                isSelected = true;
              });

            },
            onDoubleTap: () {
              setState(() {
                isSelected = false;
              });
            },
            child: Container(
              width: 160.0,
              color: Colors.red,
              child: isSelected ? items[0].icons : Container(),
            ),
          ),
          isAMatch ? Container() :
          Container(
            width: 160.0,
            color: Colors.blue,
          ),
          isAMatch ? Container() :
          Container(
            width: 160.0,
            color: Colors.green,
          ),
          isAMatch ? Container() :
          Container(
            width: 160.0,
            color: Colors.yellow,
            child: isSelected ? Icon(Icons.thumb_up) : Container(),
          ),
          isAMatch ? Container() :
          Container(
            width: 160.0,
            color: Colors.orange,
          ),
          isAMatch ? Container() :
          Container(
            width: 160.0,
            color: Colors.purple,
          ),
        ],

      )
    );
  }
}
