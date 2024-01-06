import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:security_camera/provider/navigation_bar.dart';
import 'package:security_camera/screens/Home%20Page/home.dart';
import 'package:security_camera/screens/Profile%20Page/profile.dart';
import '../Library page/library_page.dart';

class MainNavigationBar extends StatelessWidget {
  const MainNavigationBar({super.key});
  final currentTab = const [
    HomePage(),
    LibraryPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<NavigationBarProvider>(context);
    return Scaffold(
      body: currentTab[provider.currentTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: provider.currentTab,
        onTap: (index) {
          provider.currentTab = index;
        },
        backgroundColor: const Color.fromARGB(226, 255, 255, 255),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(                                           
              icon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: 'Library'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
