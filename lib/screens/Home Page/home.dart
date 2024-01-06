import 'package:flutter/material.dart';
import 'package:security_camera/app_bar_actions.dart';
import 'package:video_player/video_player.dart';
import 'video_thumb_nail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final VideoPlayerController _controller = VideoPlayerController.asset(
    'assets/videos/room_sample.mp4', // Replace with your video asset
  );

  @override
  void initState() {
    super.initState();
    _controller.initialize().then((_) {
      _controller.setLooping(true);
      _controller.play();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [
          AppBarActions(),
        ],
      ),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                child: const Text(
                  'Hi, Zeena!',
                  style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                child: const Text(
                  'Be sure of your safety',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 80,
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.fromLTRB(16, 16, 0, 8),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 229, 242, 248),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.blue, width: .5),
                  ),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return VideoTumbNail(
                  controller: _controller,
                  videoTitle: 'Camera $index',
                );
              },
            ),
          ),
        ],
      ),
      
    );
  }

}


