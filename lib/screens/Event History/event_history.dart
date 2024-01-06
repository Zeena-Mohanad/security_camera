import 'package:flutter/material.dart';
import 'package:security_camera/app_bar_actions.dart';
import 'package:security_camera/screens/Event%20History/camera_event_text.dart';

import 'eveny_history_card.dart';

class EventHistory extends StatelessWidget {
  const EventHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [AppBarActions()],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Event History',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16, bottom: 16),
            height: 300,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CameraEventText(text: '30:24'),
                Align(
                  alignment: Alignment.center,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_circle_fill_rounded,
                        size: 50,
                        color: Colors.white38,
                      )),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: Colors.white38, shape: BoxShape.circle),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.fullscreen_rounded,
                          size: 30,
                          color: Colors.black,
                        )),
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    'Yesterday, 22 August',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                EventHistoryCard(
                  notification: 'Sound detected',
                  time: '11:30:22',
                  period: '45 sec',
                  icon: Icons.surround_sound_rounded,
                ),
                EventHistoryCard(
                  notification: 'Motion detected',
                  time: '11:30:22',
                  period: '45 sec',
                  icon: Icons.motion_photos_auto,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
