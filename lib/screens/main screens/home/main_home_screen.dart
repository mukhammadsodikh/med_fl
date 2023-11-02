import 'package:flutter/material.dart';
import 'package:med_fl/bottomnavigationa/documents.dart';
import 'package:med_fl/bottomnavigationa/profile.dart';
import 'package:med_fl/bottomnavigationa/writes.dart';
import 'package:med_fl/screens/main%20screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key});

  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  static List<Widget> _pages = <Widget>[
    HomeScreen(name: 'name', description: 'description', date: 'date'),
    WritesScreen(),
    DocumentsScreen(),
    ProfileScreen(),
    // Add your other screens here
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Asosiy',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.calendar),
            label: 'Yozuvlar',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.doc_text),
            label: 'Hujjatlar',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });

          // Navigate to the selected page
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        activeColor: Colors.blue, // Customize the active tab color
        inactiveColor: Colors.grey, // Customize the inactive tab color
      ),
    );
  }
}