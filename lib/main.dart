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
  String _animation = "Standgit ";

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                  color: Colors.grey,
                  child: Text('Stand'),
                  onPressed: () {
                    setState(() {
                      _animation = "Stand";
                    });
                  },
                ),
                MaterialButton(
                  color: Colors.grey,
                  child: Text('Wave'),
                  onPressed: () {
                    setState(() {
                      _animation = "Wave";
                    });
                  },
                ),
                MaterialButton(
                  color: Colors.grey,
                  child: Text('Dance'),
                  onPressed: () {
                    setState(() {
                      _animation = "Dance";
                    });
                  },
                ),
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
          ],
        ));
  }
}
