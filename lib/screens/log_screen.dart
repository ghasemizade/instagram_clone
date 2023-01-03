import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class logScreen extends StatefulWidget {
  logScreen({Key? key}) : super(key: key);

  @override
  State<logScreen> createState() => _logScreenState();
}

class _logScreenState extends State<logScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xff1C1F2E),
          height: 55,
          child: TabBar(
            labelStyle: TextStyle(
              fontSize: 16,
              fontFamily: 'GB',
            ),
            indicatorPadding: EdgeInsets.symmetric(horizontal: 18),
            dragStartBehavior: DragStartBehavior.down,
            indicatorColor: Color(0xffF35383),
            controller: _tabController,
            tabs: [
              Tab(
                text: 'Following',
              ),
              Tab(
                text: 'You',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
