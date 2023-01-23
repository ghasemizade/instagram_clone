import 'package:flutter/material.dart';
import 'package:instagram/screens/Explore.dart';
import 'package:instagram/screens/MyHomeAccount.dart';
import 'package:instagram/screens/galary.dart';
import 'package:instagram/screens/log_screen.dart';
import 'package:instagram/screens/test.dart';

import 'home_screen.dart';

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
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xff1C1F2E),
            currentIndex: _selectedNavigationBottom,
            onTap: (int index) {
              setState(() {
                _selectedNavigationBottom = index;
              });
            },
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: _selectedNavigationBottom == 0
                    ? Image.asset("assets/Images/icon_active_home.png")
                    : Image.asset("assets/Images/icon_home.png"),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _selectedNavigationBottom == 1
                    ? Image.asset(
                        'assets/Images/icon_search_navigation_active.png')
                    : Image.asset('assets/Images/icon_search_navigation.png'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _selectedNavigationBottom == 2
                    ? Image.asset(
                        "assets/Images/icon_add_navigation_active.png")
                    : Image.asset("assets/Images/icon_add_navigation.png"),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _selectedNavigationBottom == 3
                    ? Image.asset(
                        "assets/Images/icon_activity_navigation_active.png")
                    : Image.asset("assets/Images/icon_activity_navigation.png"),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color(0xffC5C5C5),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('assets/Images/HoseinAvatar.jpg'),
                    ),
                  ),
                ),
                label: '',
                activeIcon: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color(0xffF35383),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('assets/Images/HoseinAvatar.jpg'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: _selectedNavigationBottom,
        children: getLayout(),
      ),
    );
  }

  List<Widget> getLayout() {
    return <Widget>[
      homePage(),
      ExploreScreen(),
      galaryItems(),
      logScreen(),
      MyHomeAccount(),
    ];
  }
}
