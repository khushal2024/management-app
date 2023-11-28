import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  final player = AudioPlayer();

  playUrl(String url) {
    player.play(url as Source);
  }

  @override
  void dispose() {
    player.dispose(); // Dispose of the player when the widget is disposed.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
                context); // Use pop to navigate back to the previous screen.
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Container(
                width: 250,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.cyan,
                ),
                child: ElevatedButton.icon(
                  onPressed: () {
                    playUrl(
                      'https://pixabay.com/music/future-bass-trap-future-bass-royalty-free-music-167020/', // Replace with your audio URL.
                    );
                  },
                  icon: Icon(Icons.play_arrow),
                  label: Text("Play"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
