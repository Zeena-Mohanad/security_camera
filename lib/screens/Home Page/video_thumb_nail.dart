import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoTumbNail extends StatelessWidget {
  const VideoTumbNail({
    super.key,
    required VideoPlayerController controller,
    required this.videoTitle,
  }) : _controller = controller;

  final VideoPlayerController _controller;
  final String videoTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 22 / 9,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: VideoPlayer(_controller)),
          ),
          AspectRatio(
            aspectRatio: 22 / 9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white38,
                            shape: BoxShape.circle,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(4),
                            child: Icon(
                              Icons.more_vert_rounded,
                              size: 20,
                            ),
                          ))),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 200,
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          margin: const EdgeInsets.fromLTRB(4, 0, 6, 0),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                              )),
                        ),
                        Text(
                          videoTitle,
                          style: const TextStyle(
                              fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
