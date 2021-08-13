import 'package:flutter/material.dart';
import 'package:netflix/screens/Home_screen.dart';
import 'package:netflix/widgets/responsive.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<Widget> _screens = [
    HomeScreen(key: PageStorageKey('HomeScreen')),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final Map<String, IconData> _icons = {
    'Home': Icons.home,
    'Search': Icons.search,
    'Comming Soon': Icons.queue_play_next,
    'Downloads': Icons.file_download,
    'More': Icons.menu,
  };

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: !Responsive.isDesktop(context) ? BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,

        items: _icons.map((title, icon) =>
            MapEntry(title, BottomNavigationBarItem(
                icon: Icon(icon, size: 30,),
                label: title
            ),

            ),).values.toList(),
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        unselectedFontSize: 11,
        selectedFontSize: 11,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

      ):null,
    );
  }
}
