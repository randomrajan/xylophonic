import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int soundnumber)
  {
    final player = AudioCache();
    player.play('assets/note$soundnumber.wav');
  }
  Expanded buildkey(Color colorname)
  {
    return Expanded(
      child: FlatButton(
        color: $colorname,
        onPressed: () {
          playsound(1);
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
            children: [
              buildkey(color:Colors.purple),
              buildkey(color:Colors.white),
              buildkey(color:Colors.blue),
              buildkey(color:Colors.green),
              buildkey(color:Colors.yellow),
              buildkey(color:Colors.orange),
              buildkey(color:Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
