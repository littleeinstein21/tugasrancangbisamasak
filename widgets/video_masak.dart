import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoMemasakScreen extends StatelessWidget {
  final String videoUrl;
  final String nama;

  const VideoMemasakScreen({required this.videoUrl, required this.nama, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Video Memasak $nama',
          style: const TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 15, 101, 100),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: YoutubePlayer.convertUrlToId(videoUrl) ?? '',
          flags: const YoutubePlayerFlags(
            autoPlay: false,
            mute: false,
          ),
        ),
        showVideoProgressIndicator: true,
        onReady: () {
          // Do something when the video is ready to play
        },
      ),
    );
  }
}
