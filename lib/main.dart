import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Expanded getButtonWidget(
      {Color? color, int musicNoteNumber = 1, String colorText = 'default'}) {
    return Expanded(
        child: GestureDetector(
      onTap: () {
        AudioPlayer().play(AssetSource('note$musicNoteNumber.wav'));
      },
      child: Container(
        color: color,
        child: Center(child: Text(colorText)),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            getButtonWidget(
                color: Colors.red, musicNoteNumber: 1, colorText: 'red'),
            getButtonWidget(
                color: Colors.orange, musicNoteNumber: 2, colorText: 'orange'),
            getButtonWidget(
                color: Colors.yellow, musicNoteNumber: 3, colorText: 'yellow'),
            getButtonWidget(
                color: Colors.green, musicNoteNumber: 4, colorText: 'green'),
            getButtonWidget(
                color: Colors.teal, musicNoteNumber: 5, colorText: 'teal'),
            getButtonWidget(
                color: Colors.blue, musicNoteNumber: 6, colorText: 'blue'),
            getButtonWidget(
                color: Colors.purple, musicNoteNumber: 7, colorText: 'purple'),
          ],
        )),
      ),
    );
  }
}
