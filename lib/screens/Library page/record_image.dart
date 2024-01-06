import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:security_camera/screens/Event%20History/event_history.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class RecordImage extends StatefulWidget {
  const RecordImage({super.key, required this.videoPath, required this.index});
  final String videoPath;
  final int index;

  @override
  State<RecordImage> createState() => _RecordImageState();
}

class _RecordImageState extends State<RecordImage> {
  Future<Uint8List?> _generateThumbnail(String videoUrl) async {
    final thumbnail = await VideoThumbnail.thumbnailData(
      video: videoUrl,
      imageFormat: ImageFormat.JPEG,
      maxWidth: 200,
      quality: 25,
    );
    return thumbnail;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      color: Colors.white,
      child: ListTile(
        leading: Container(
          width: 50,
          child: FutureBuilder(
              future: _generateThumbnail(widget.videoPath),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                  // } else if (snapshot.hasError) {
                  //   return Container(
                  //     width: 100,
                  //     height: 200.0,
                  //     color: Colors.green,
                  //     child: const Center(
                  //       child: Text("Error loading Image"),
                  //     ),
                  //   );
                } else if (snapshot.hasData) {
                  return Image.memory(
                    snapshot.data!,
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  );
                } else {
                  return Container();
                }
              }),
        ),
        title: Text('Camera ${widget.index}'),
        subtitle: Text('30:24'),
        trailing: IconButton(
          icon: Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EventHistory()),
            );
          },
        ),
      ),
    );
  }
}
