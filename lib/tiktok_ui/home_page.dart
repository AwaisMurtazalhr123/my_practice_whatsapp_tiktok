import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:whatsapp_tiktok/tiktok_ui/post1.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget pages(Color c) {
    return Container(
      color: c,
    );
  }

  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((value) {
        setState(() {
          _controller!.play();
        });
      });
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (c, i) {
              return Container(
                child: Center(
                    child: AspectRatio(
                        aspectRatio: _controller!.value.aspectRatio,
                        child: VideoPlayer(_controller!))),
              );
            }));
  }
}
