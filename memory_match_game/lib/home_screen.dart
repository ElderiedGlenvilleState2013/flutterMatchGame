import 'package:flutter/material.dart';

import 'match_game_level1.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround ,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              CircleAvatar(
                radius: 35.0,
                backgroundColor: Colors.tealAccent,
                child: Icon(
                  Icons.memory,
                  size: 60.0,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 40.0,),
              Center(
                child: Text(
                  "Welecome To Memory",
                  style: TextStyle(
                    color: Colors.tealAccent,
                    fontSize: 20.0
                  ),
                ),
              ),Center(
                child: Text(
                  "Press Enter To Join",
                  style: TextStyle(
                    color: Colors.tealAccent,
                    fontSize: 20.0
                  ),
                ),
              ),

            ],
          ),

          RaisedButton(
            child: Text(
              "Enter",
              style: TextStyle(
                color: Colors.white
              ),
            ),
            color: Colors.blueAccent,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MatchLevel1()));
            },
          ),
        ],
      ),
    );
  }
}
