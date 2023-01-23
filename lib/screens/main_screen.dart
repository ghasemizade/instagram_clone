import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedNavigationBottom = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff1C1F2E),
        currentIndex: _selectedNavigationBottom,
        onTap: (int index) {
          setState(() {
            _selectedNavigationBottom = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/Images/icon_home.png"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedNavigationBottom == 1
                ? Image.asset('assets/Images/icon_search_navigation_active.png')
                : Image.asset('assets/Images/icon_search_navigation.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/Images/icon_add_navigation.png"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedNavigationBottom == 3
                ? Image.asset(
                    "assets/Images/icon_activity_navigation_active.png")
                : Image.asset("assets/Images/icon_activity_navigation.png"),
            label: '',
          ),
        ],
      ),
      body: Center(
        child: Text('hosein'),
      ),
    );
  }
}
