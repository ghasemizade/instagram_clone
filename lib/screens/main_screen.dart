import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff1C1F2E),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/Images/icon_home.png"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/Images/icon_search_navigation.png"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/Images/icon_add_navigation.png"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/Images/icon_activity_navigation.png"),
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
