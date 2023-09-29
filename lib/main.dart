import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return getApplication();
  }
}

Widget getApplication() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
          child: DecoratedBox(
        position: DecorationPosition.background,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/drum.png'),
              fit: BoxFit.fitWidth),
        ),
        child: getBody(),
      )),
    ),
  );
}

Widget getBody() {
  return Column(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: TextButton(
                    onPressed: () {
                      playSound('c1.wav');
                    },
                    child: const Text(''))),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      playSound('c2.wav');
                    },
                    child: const Text(''))),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: TextButton(
                    onPressed: () {
                      playSound('h1.wav');
                    },
                    child: const Text(''))),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      playSound('h2.wav');
                    },
                    child: const Text(''))),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: TextButton(
                    onPressed: () {
                      playSound('k1.wav');
                    },
                    child: const Text(''))),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      playSound('k2.wav');
                    },
                    child: const Text(''))),
          ],
        ),
      ),
    ],
  );
}

// play sound from asset by package audioPlayer

void playSound(String sound) {
  final player = AudioPlayer();
  player.play(AssetSource(sound));
}
