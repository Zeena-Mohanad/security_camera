import 'package:flutter/material.dart';

class EventHistoryCard extends StatelessWidget {
  const EventHistoryCard({
    super.key,
    required this.notification,
    required this.time,
    required this.period, 
    required this.icon,
  });
  final String notification;
  final String time;
  final String period;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: ListTile(
        leading: Container(
          height: 40,
          child: Icon(icon),
        ),
        title: Text(notification),
        subtitle: Row(
          children: [
            Text('$time - $period'),
          ],
        ),
      ),
    );
  }
}
