import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Minion',
      home: Minion(),
      debugShowCheckedModeBanner: false,
    ));

class Minion extends StatefulWidget {
  @override
  _MinionState createState() => _MinionState();
}

class _MinionState extends State<Minion> {

  // Variable for controlling the animation
  String _animation = "Stand";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        appBar: AppBar(
          centerTitle: true,
          title: Text('Flare Minion'),
          backgroundColor: Colors.cyan,
        ),
        
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            // Container of the animation actor
            Container(
              height: 500,
              width: 500,
              child: FlareActor(
                "assets/bob.flr",
                alignment: Alignment.center,
                fit: BoxFit.cover,
                animation: _animation,
              ),
            ),
            
            // Row of buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[

                // Button 1 - sets animation to "Stand"
                MaterialButton(
                  color: Colors.grey,
                  child: Text('Stand'),
                  onPressed: () {
                    setState(() {
                      _animation = "Stand";
                    });
                  },
                ),
                
                // Button 2 - sets animation to "Wave"                
                MaterialButton(
                  color: Colors.grey,
                  child: Text('Wave'),
                  onPressed: () {
                    setState(() {
                      _animation = "Wave";
                    });
                  },
                ),

                // Button 3 - sets animation to "Dance"
                MaterialButton(
                  color: Colors.grey,
                  child: Text('Dance'),
                  onPressed: () {
                    setState(() {
                      _animation = "Dance";
                    });
                  },
                ),

                // Button 4 - sets animation to "Jump"
                MaterialButton(
                  color: Colors.grey,
                  child: Text('Jump'),
                  onPressed: () {
                    setState(() {
                      _animation = "Jump";
                    });
                  },
                )
              ],
            ),

            // TO-DO - Add multiple animations to start simultaneously
            // like Jump + wave or Jump + dance
            
          ],
        ));
  }
}
