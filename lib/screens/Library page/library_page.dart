import 'package:flutter/material.dart';
import 'package:security_camera/app_bar_actions.dart';
import 'package:table_calendar/table_calendar.dart';
import 'record_image.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  bool showMonthView = false;
  CalendarFormat calendarFormat = CalendarFormat.week;
  DateTime today = DateTime.now();

  void onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Library',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [AppBarActions()],
      ),
      body: Stack(
        children: [
          ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return RecordImage(
                  index: index,
                  videoPath: 'assets/videos/room_sample.mp4',
                );
              }),
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                )
              ]),
              child: TableCalendar(
                headerStyle: HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                availableGestures: AvailableGestures.all,
                focusedDay: today,
                firstDay: DateTime.utc(2010),
                lastDay: DateTime.utc(2045),
                onDaySelected: onDaySelected,
                selectedDayPredicate: (day) => isSameDay(day, today),
                calendarFormat: calendarFormat,
              ),
            )
          ]),
        ],
      ),
    );
  }
}
