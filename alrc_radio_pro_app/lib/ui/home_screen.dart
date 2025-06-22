
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final player = AudioPlayer();
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    player.setUrl("https://groupemedia.info/uploads/udio/presenttion1.mp3");
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  void togglePlayPause() async {
    if (isPlaying) {
      await player.pause();
    } else {
      await player.play();
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ALRC Radio Business'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage("https://groupemedia.info/uploads/images/logo_radio.png"),
            ),
          ),
          SizedBox(height: 20),
          Text('Bienvenue sur ALRC Radio Business',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 30),
          IconButton(
            iconSize: 80,
            icon: Icon(isPlaying ? Icons.pause_circle : Icons.play_circle),
            onPressed: togglePlayPause,
          )
        ],
      ),
    );
  }
}
