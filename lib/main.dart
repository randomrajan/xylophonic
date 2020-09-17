import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int soundnumber)
  {
    final player = AudioCache();
    player.play('assets/note$soundnumber.wav');
  }
  Expanded buildkey({Color color, int soundnumber})
  {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundnumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color:Colors.purple, soundnumber:1),
              buildkey(color:Colors.white, soundnumber:2),
              buildkey(color:Colors.blue, soundnumber:3),
              buildkey(color:Colors.green, soundnumber:4),
              buildkey(color:Colors.yellow, soundnumber:5),
              buildkey(color:Colors.orange, soundnumber:6),
              buildkey(color:Colors.red, soundnumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
